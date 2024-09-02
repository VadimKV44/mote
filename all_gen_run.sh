#!/bin/zsh

BLUE='\033[1;34m'
DEFAULT='\033[0m'
GREEN='\033[1;32m'
DARK_GREEN='\033[0;32m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'

BOLD='\033[1m'
ITALIC='\033[3m'
UNDERLINE='\033[4m'

sh get_pub.sh

sh gen_run.sh

echo "${ITALIC}${BLUE}🚀------------------------------------------------------------🚀${DEFAULT}"
echo "${ITALIC}${BLUE}🚀------------------ :: Run FLUTTERGEN... :: -----------------🚀${DEFAULT}"
echo "${ITALIC}${BLUE}🚀------------------------------------------------------------🚀${DEFAULT}"

fluttergen

echo "${BOLD}${GREEN}✅------------------------------------------------------------✅${DEFAULT}"
echo "${BOLD}${GREEN}✅------------------------ :: Done! :: -----------------------✅${DEFAULT}"
echo "${BOLD}${GREEN}✅------------------------------------------------------------✅${DEFAULT}"
echo