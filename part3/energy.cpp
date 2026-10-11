// Measures energy while a program runs (macOS, Apple Silicon, no sudo):
//   - whole SoC: IOReport "Energy Model" counters, the same source powermetrics reads
//   - the program only: energy billed to the process by the kernel (proc_pid_rusage)
//
// Build: c++ -std=c++20 -O2 energy.cpp -o energy -framework CoreFoundation -lIOReport
// Usage: ./energy ../main_O0

#include <CoreFoundation/CoreFoundation.h>
#include <libproc.h>
#include <spawn.h>
#include <sys/wait.h>

#include <chrono>
#include <cstdio>
#include <string>

extern char** environ;

// libIOReport has no public header
extern "C"
{
  CFDictionaryRef IOReportCopyChannelsInGroup(CFStringRef, CFStringRef, uint64_t, uint64_t, uint64_t);
  void* IOReportCreateSubscription(void*, CFMutableDictionaryRef, CFMutableDictionaryRef*, uint64_t, CFTypeRef);
  CFDictionaryRef IOReportCreateSamples(void*, CFMutableDictionaryRef, CFTypeRef);
  CFDictionaryRef IOReportCreateSamplesDelta(CFDictionaryRef, CFDictionaryRef, CFTypeRef);
  CFStringRef IOReportChannelGetChannelName(CFDictionaryRef);
  CFStringRef IOReportChannelGetUnitLabel(CFDictionaryRef);
  int64_t IOReportSimpleGetIntegerValue(CFDictionaryRef, int32_t);
}

std::string to_string(CFStringRef str)
{
  char buffer[64] = {};
  CFStringGetCString(str, buffer, sizeof(buffer), kCFStringEncodingUTF8);
  return buffer;
}

double to_joules(int64_t value, const std::string& unit)
{
  if (unit == "mJ") return value * 1e-3;
  if (unit == "uJ") return value * 1e-6;
  if (unit == "nJ") return value * 1e-9;
  return 0.0;
}

int main(int argc, char** argv)
{
  if (argc < 2)
  {
    std::printf("Usage: %s <program> [args]\n", argv[0]);
    return 1;
  }

  CFDictionaryRef group = IOReportCopyChannelsInGroup(CFSTR("Energy Model"), nullptr, 0, 0, 0);
  CFMutableDictionaryRef channels = CFDictionaryCreateMutableCopy(nullptr, 0, group);
  CFMutableDictionaryRef subscribed = nullptr;
  void* subscription = IOReportCreateSubscription(nullptr, channels, &subscribed, 0, nullptr);

  CFDictionaryRef before = IOReportCreateSamples(subscription, subscribed, nullptr);
  auto start = std::chrono::steady_clock::now();

  pid_t pid;
  if (posix_spawnp(&pid, argv[1], nullptr, nullptr, argv + 1, environ) != 0)
  {
    std::perror("posix_spawnp");
    return 1;
  }

  // WNOWAIT keeps the finished process as a zombie, so its statistics are still readable
  siginfo_t info;
  waitid(P_PID, pid, &info, WEXITED | WNOWAIT);

  double seconds = std::chrono::duration<double>(std::chrono::steady_clock::now() - start).count();
  CFDictionaryRef after = IOReportCreateSamples(subscription, subscribed, nullptr);

  rusage_info_v6 usage = {};
  proc_pid_rusage(pid, RUSAGE_INFO_V6, reinterpret_cast<rusage_info_t*>(&usage));
  waitpid(pid, nullptr, 0);

  CFDictionaryRef delta = IOReportCreateSamplesDelta(before, after, nullptr);
  CFArrayRef samples = static_cast<CFArrayRef>(CFDictionaryGetValue(delta, CFSTR("IOReportChannels")));

  double cpu = 0.0, gpu = 0.0;
  for (CFIndex i = 0; i < CFArrayGetCount(samples); ++i)
  {
    CFDictionaryRef channel = static_cast<CFDictionaryRef>(CFArrayGetValueAtIndex(samples, i));
    std::string name = to_string(IOReportChannelGetChannelName(channel));
    std::string unit = to_string(IOReportChannelGetUnitLabel(channel));
    double joules = to_joules(IOReportSimpleGetIntegerValue(channel, 0), unit);

    if (name == "CPU Energy") cpu = joules;
    if (name == "GPU Energy") gpu = joules;
  }

  double process = usage.ri_energy_nj * 1e-9;

  std::printf("\n");
  std::printf("Time:            %8.2f s\n", seconds);
  std::printf("System (CPU):    %8.2f J  %6.2f W\n", cpu, cpu / seconds);
  std::printf("System (GPU):    %8.2f J  %6.2f W\n", gpu, gpu / seconds);
  std::printf("Program only:    %8.2f J  %6.2f W\n", process, process / seconds);
  return 0;
}
