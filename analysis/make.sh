#!/usr/bin/env bash
# Makes every analysis file in this folder from the samples. Run it with
# 'csd analyze'. Add one line for each file.
#
# The analysis files are output, so .gitignore holds them. Anybody who clones
# the project runs this script once.
set -euo pipefail

cd "$(dirname "$0")/.."

# pvanal samples/voice.wav analysis/voice.pvx

echo "analysis: nothing to make yet. Add a command to analysis/make.sh."
