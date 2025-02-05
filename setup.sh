#!/usr/bin/env bash

# Set terminal colors
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
RESET="\033[0m"

# Print banner
echo ""
echo -e "\e[34m please waiting for Setup ....[\e[92m✓\e[34m]\e[92m"

echo ""
echo -e "${GREEN}░CREATE░ ░B░Y░ ░M░A░H░A░D░E░B ░R░U░I░D░A░S░${RESET}"

echo 
echo -n "Loading "
timeout 5s bash -c '
while true
do
    echo -n "."
    sleep 1
done
'
echo " Done!"


apt update && apt upgrade -y
pkg install openssh php -y
pkg install tmux -y
mv instagram /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/instagram
if ! command -v node &> /dev/null
then
    echo "Node.js LTS not found. Installing..."
    pkg install nodejs-lts || { echo "Failed to install Node.js LTS" ; exit 1; }
else
    echo "Node.js LTS already installed"
fi
if ! command -v wget &> /dev/null
then
    echo "wget not found. Installing..."
    apt install -y wget || { echo "Failed to install wget" ; exit 1; }
else
    echo "wget already installed"
fi


echo -e "\e[92mINSTALLED SETUP SUCCESSFULLY....[\e[34m✓\e[92m]\e[34m"
rm setup.sh
