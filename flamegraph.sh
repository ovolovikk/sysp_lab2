#!/bin/sh
# Usage: ./flamegraph.sh main_O0

sample $1 60 -wait -mayDie -file part1/$1.sample.txt &
sleep 1
./$1
wait

awk -f FlameGraph/stackcollapse-sample.awk part1/$1.sample.txt | FlameGraph/flamegraph.pl > part1/$1.svg
