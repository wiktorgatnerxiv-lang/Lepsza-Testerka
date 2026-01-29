#!/bin/bash
g++ brut.cpp -o brut
g++ wzor.cpp -o wzor
g++ los.cpp -o los
for I in {1..100000}; do
  ./los > test
  ./brut < test > cor
  ./wzor < test > ans
  diff -bew cor ans || break;
  echo "[${I}] OK"
done
