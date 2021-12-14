ln -sf ~/dotfiles/.zsh_history ~/.zsh_history
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.config ~/.gitconfig
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -sf ~/dotfiles/.aliases.zsh ~/.aliases.zsh

echo "Rust ftw"
sleep 0.3
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# install Volta cause it's cool lol
curl https://get.volta.sh | bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k