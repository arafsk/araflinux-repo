#!/usr/bin/env bash
#
set -euo pipefail

BOLD='\e[1m'
GREEN='\e[92m'
RED='\e[91m'
YELLOW='\e[93m'
RESET='\e[0m'

print_info () {
    echo -ne "${BOLD}${YELLOW}$1${RESET}\n"
}
git status
git add -u && print_info "Git add updated files in this directory."
git add * && print_info "Git add all files in this directory."
git commit -m "Updating database." && print_info "Commit Message: Updating database."
git push && print_info "Git push completed."

