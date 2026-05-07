#!/bin/bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$BASE_DIR"

source venv/bin/activate

# Allow passing arguments and save all output to agent.log
python -u agent.py "$@" 2>&1 | tee -a agent.log
