#!/bin/zsh

BLUE='\033[1;34m'
DEFAULT='\033[0m'
GREEN='\033[1;32m'

BOLD='\033[1m'
ITALIC='\033[3m'
UNDERLINE='\033[4m'

echo
echo "${ITALIC}${BLUE}🚀------------------------------------------------------------🚀${DEFAULT}"
echo "${ITALIC}${BLUE}🚀----------------- :: Run build runner... :: ----------------🚀${DEFAULT}"
echo "${ITALIC}${BLUE}🚀------------------------------------------------------------🚀${DEFAULT}"

dart run build_runner build --delete-conflicting-outputs

echo "${BOLD}${GREEN}✅------------------------------------------------------------✅${DEFAULT}"
echo "${BOLD}${GREEN}✅------------------------ :: Done! :: -----------------------✅${DEFAULT}"
echo "${BOLD}${GREEN}✅------------------------------------------------------------✅${DEFAULT}"
echo
