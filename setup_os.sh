#!/bin/sh

# Start the script
echo "Starting Setup..."
sleep 1

echo "Please enter your package manager"
read pkg_manager

# The script logic
if [ $pkg_manager = "pacman" ]; then
   echo "You have chosen pacman package-manager"
   # Update
   echo "Updating System..."
   sudo pacman -Syu --noconfirm

   echo "Setup for setup"
   sudo pacman -Sy --noconfirm beep
   # Install some dev stuff
   echo "Deno"
   curl -fsSL https://deno.land/x/install/install.sh | sh
   sleep 0.7
   echo "Node.js NPM"
   pacman -S --noconfirm nodejs npm

   # And apps
   echo "discord"
   sudo pacman -Sy --noconfirm discord
   echo "neovim"
   sudo pacman -Sy --noconfirm neovim
   echo "snake-game :)"
   sudo pacman -Sy --noconfirm snake
   echo "Kdenlive"
   sudo pacman -Sy --noconfirm kdenlive
   echo "microsoft-teams for my classes"
   sudo pacman -Sy --noconfirm teams
   echo "visual studio code"
   sudo pacman -Sy --noconfirm visual-studio-code-bin

   # GUI
   echo "plank"
   sudo pacman -Sy plank
   # Produce a beep sound so that the user can come and check for comfirmation
   for n in 1 2 3; do
      for f in 1 2 1 2 1 2 1 2 1 2; do
         beep -f ${f}000 -l 20
      done
   done

   # Stuff that requires comfirmation
   # rust
   echo "Rust"
   curl https://sh.rustup.rs -sSf | sh

   for n in 1 2 3; do
      for f in 1 2 1 2 1 2 1 2 1 2; do
         beep -f ${f}000 -l 20
      done
   done

   echo "Rebooting in 5 secounds"
   sleep 5
   echo "rebooting"
   reboot

elif [ $pkg_manager = "apt" ]; then
   echo "You have chosen apt package-manager"
   echo "Updating System.."
   sudo apt install beep
   sudo apt update
   sudo apt upgrade

   wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
   sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
   sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
   rm -f packages.microsoft.gpg

   sudo apt install apt-transport-https
   sudo apt update
   sudo apt install code
   echo "Installed Visual Studio Code!"
else
   echo "Cannot find package manager: $pkg_manager"
   echo "shush, check these instructions $HOME :-" >>README_IMPORTANT.txt
fi
