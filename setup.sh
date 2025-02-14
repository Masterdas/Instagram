#!/usr/bin/env bash

# Print banner
echo ""
echo -e "\e[34m please waiting for Setup ....[\e[92m✓\e[34m]\e[92m"

echo ""
echo -e "\033[31m░CREATE░ ░B░Y░ ░M░A░H░A░D░E░B ░R░U░I░D░A░S░\033[0m"

echo 
echo -n "Loading "
timeout 3s bash -c '
while true
do
    echo -n "."
    sleep 1
done
'
echo " Done!"


pkg update && pkg upgrade -y
pkg install -y php openssh nodejs tmux
npm install -g tunnelmole
mv instagram localhost /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/instagram
chmod +x /data/data/com.termux/files/usr/bin/localhost


echo -e "\e[92mINSTALLED SETUP SUCCESSFULLY....[\e[34m✓\e[92m]\e[34m"
rm setup.sh
