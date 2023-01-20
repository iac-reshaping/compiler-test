#!/bin/bash

# Author : James Nock (@Jpnock)
# Year   : 2023

set -euo pipefail

OUT="bin/driver"

mkdir -p bin
/opt/riscv/bin/riscv64-unknown-elf-gcc -march=rv32imfd -mabi=ilp32d -o "${OUT}" test/aux.s test/driver.c

set +e
spike pk "${OUT}"
echo "Exited with code ${?}"
set -e
