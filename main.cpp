#include <cstddef>
#include <iostream>
#include <random>

#include "matrix.hpp"

constexpr std::size_t N = 128;
constexpr int ROUNDS = 2000;

Matrix<double> generate(std::size_t n, unsigned seed)
{
  std::mt19937 gen(seed);
  std::uniform_real_distribution<double> dist(-1.0, 1.0);

  Matrix<double> m(n, n);
  for (auto& value : m)
  {
    value = dist(gen);
  }
  return m;
}

int main()
{
  std::cout << "Matrix size: " << N << "x" << N << ", rounds: " << ROUNDS << '\n';

  double trace_sum = 0.0;
  double det = 0.0;
  for (int n = 0; n < ROUNDS; ++n)
  {
    Matrix<double> a = generate(N, 2 * n + 1);
    Matrix<double> b = generate(N, 2 * n + 2);

    Matrix<double> c = a * b;
    Matrix<double> s = (c + c.transposed()) * 0.5;

    trace_sum += s.trace();
    det = s.det();
  }

  std::cout << "Trace sum: " << trace_sum << ", last det: " << det << '\n';
  return 0;
}
