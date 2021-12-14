## My linux ~/.dotfiles
### Setup
Install some important stuff
```sh

sudo apt update
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    make \
    tree \
    zip unzip \
    zsh
```
## clone the repo using https or ssh

```sh
git clone https://github.com/dhairy-online/dotfiles
```

then do 
```sh
cd dotfiles && chmod +x ./setup.sh && ./setup.sh
```

Configure git
```sh
# Generate a new SSH key
ssh-keygen -t rsa -b 4096 -C "dhairysrivastava5@gmail.com"

# Start ssh-agent and add the key to it
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

# Display the public key ready to be copy pasted to GitHub
cat ~/.ssh/id_rsa.pub
```
then add it to github.

install node and deno
```sh
# node
volta install node npm yarn
# deno (using curl)
curl -fsSL https://deno.land/x/install/install.sh | sh
```
rust is installed automatically in `./setup.sh`!

you are done, enjoy

