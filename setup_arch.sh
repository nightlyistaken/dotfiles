#!/bin/sh

echo "Starting Setup..."
echo "tell me if u want vscode insiders or vscode stable?"

echo "1 for code insiders | 2 for code stable"
read code_choice

echo "This may take some time.."
sleep 0.5

echo "Updating System"
sudo pacman -Syu --noconfirm

echo "Done! Now lets install some basic apps"
sleep 1
echo "discord"
sudo pacman -Sy --noconfirm discord
echo "visual-studio-code"

if [ $code_choice = 1 ]
then
   echo "You had chosen VS Code insiders" 
   sudo pacman -Sy --noconfirm --noprogressbar visual-studio-code-insiders-bin
else
   echo "You had chosen VS Code Stable version" 
   sudo pacman -Sy --noconfirm --noprogressbar visual-studio-code-bin
fi

echo "neovim"
sudo pacman -Sy --noconfirm neovim
echo "snake-game :)"
sudo pacman -Sy --noconfirm snake
echo "Kdenlive"
sudo pacman -Sy --noconfirm kdenlive


echo "Now some dev stuff"
sleep 1
echo "Deno"
curl -fsSL https://deno.land/x/install/install.sh | sh
echo "do this ^ after this is done"
sleep 0.7
echo "Node.js NPM"
pacman -S --noconfirm nodejs npm
