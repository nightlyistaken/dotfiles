


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
echo "microsoft-teams for my classes"
sudo pacman -Sy --noconfirm teams

echo "Now some dev stuff"
sleep 1
echo "Deno"
curl -fsSL https://deno.land/x/install/install.sh | sh
echo "do this ^ after this is done"
sleep 0.7
echo "Node.js NPM"
pacman -S --noconfirm nodejs npm

echo "Login and passwords?"
firefox -new-window "https://github.com/login" -new-window "https://myaccounts.google.com" -new-window "https://mail.google.com/mail/u/0/#inbox"
