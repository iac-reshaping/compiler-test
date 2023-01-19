#!/bin/bash

set -euo pipefail

OUT="bin/test1"

mkdir -p bin
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv32imfdc -mabi=ilp32d -o "${OUT}" test/main.c

set +e
spike pk "${OUT}"
set -e

echo "Returned with code ${?}"
