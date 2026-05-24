#!/usr/bin/env bash

# Execute C++ files

rcpp() {
  mkdir -p build
  g++ -Wall -Wextra -Werror "$1" -o ./build/a.out && ./build/a.out
}
