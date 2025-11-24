#!/bin/bash
PUNTTU_DIR=${0:a:h}/../../

echo "Apple OSX Development Edition - Asier 2024"

echo "Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing browsers [arc browser, firefox, google-chrome]"
brew install --cask arc firefox google-chrome

echo "Installing raycast"
brew install --cask raycast

echo "=============================="
echo "Installing terminal tools"
echo "=============================="

echo "Installing Oh My Zsh"
ZSH=$PUNTTU_DIR/shell/zsh/ohmyzsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing ghostty"
brew install --cask ghostty

echo "Install autojump"
brew install zoxide && zoxide init --cmd cd 

echo "Install neovim"
brew install neovim

echo "Installing thefuck"
brew install thefuck

echo "Create if needed ssh keys"
cat /dev/zero | ssh-keygen -q -N ""

echo "Installing different scripts"
brew install jq \ # Json parser for bash
    fzf \
    dnsmasq \
    coreutils

echo "=============================="
echo "Installing development tools"
echo "=============================="

echo "Install Docker"
brew install --cask docker

echo "Install Postman"
brew install --cask postman

echo "Install Cursor"
brew install --cask cursor

echo "Install Visual Studio Code"
brew install --cask visual-studio-code

echo "Install Sequel-Pro for database management"
brew install --cask sequel-pro

echo "Install NoSQL Booster for MongoDB"
brew install --cask nosqlbooster-for-mongodb

echo "Installing nvm for nodejs"
brew install nvm

echo "=============================="
echo "Installing team tools"
echo "=============================="

echo "Install Slack"
brew install --cask slack

echo "Installing Microsoft Teams"
brew install --cask microsoft-teams

echo "=============================="
echo "Installing other tools"
echo "=============================="

echo "Installing Obsidian"
brew install --cask obsidian

echo "Installing meeting bar"
brew install --cask meetingbar

echo "Installing libre office"
brew install --cask libreoffice libreoffice-language-pack

echo "Installing image utilities"
brew install --cask gimp

echo "Installing latest - system upgrading tool"
brew install --cask latest

echo "Installing Wireguard Client"
brew install wireguard-tools

echo "=============================="
echo "=============================="

echo "Your development workstation is installed!"
echo "Dont forget to add your ssh keys to your github and bitbucket accounts! (Use Cmd + v to paste it)"
cat ~/.ssh/id_rsa.pub | pbcopy
cat ~/.ssh/id_rsa.pub