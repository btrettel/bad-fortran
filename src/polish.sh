#!/usr/bin/env bash

set -euo pipefail
set -o noclobber
shopt -s nullglob globstar

decs - ../pol_options $1| grep -v "^C     \.\." >| $1_
pol ../pol_options $1_ >| $1
rm $1_
