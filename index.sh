#!/bin/bash

chsh -s /bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

cd $HOME
git clone https://github.com/TaYaKi71751-mac-config/etc
cd etc
git pull
sudo cp -R * /etc/
source /etc/bashrc

brew install iterm2
brew install nodejs
brew install gh
brew install --cask firefox@developer-edition
brew install firefox
brew install google-chrome
brew install flutter
brew install neovim
brew install python
brew install colima
brew install docker
brew install openjdk
brew install maven
brew install visual-studio-code
brew install ruby
brew install rbenv
brew install eclipse-jee
sudo gem install cocoapods


curl -LsSf \
"https://github.com/\
TaYaKi71751-linux-config/packages\
/raw/\
config/nvim\
/config.sh" | sh

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo nvim +PlugInstall +qall
sudo chown -R $(whoami) $HOME/.config/nvim
nvim +'CocInstall -sync coc-json coc-tsserver coc-eslint coc-java coc-flutter' +qall

