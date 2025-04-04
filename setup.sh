#!/usr/bin/env bash

# Print banner
echo ""
echo -e "\e[1;32m please waiting for Setup ....[\e[92m✓\e[34m]\e[92m"

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
chmod +x insta delete-insta
mv insta delete-insta $PREFIX/bin/
cd $HOME
mv Instagram /data/data/com.termux/files/usr/share/

echo -e "\e[92m Installed Successfully and type Insta [\e[34m✓\e[92m]\e[34m"

echo -e "\e[92m~\e[0m $ .....\e[92mSUBSCRIBE My YOUTUBE Channel\e[0m.....\e[94m[\e[92m✓\e[94m]\e[0m"
termux-open-url https://youtube.com/shorts/J3bAMhYz9bc
