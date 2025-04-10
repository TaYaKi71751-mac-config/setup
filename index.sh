#!/bin/bash

chsh -s /bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cd $HOME
git clone https://github.com/TaYaKi71751-mac-config/etc
cd etc
git pull
sudo cp -R * /etc/
source /etc/bashrc

brew install watchexec
brew install qemu
brew install iterm2
brew install nodejs
brew install gh
brew install --cask firefox@developer-edition
brew install firefox
brew install google-chrome
brew install flutter
brew install visual-studio-code
brew install lua
brew install neovim
brew install python
brew install colima
brew install docker
brew install openjdk
brew install maven
brew install visual-studio-code
brew install spotify
bash <(curl -sSL https://raw.githubusercontent.com/SpotX-Official/SpotX-Bash/main/spotx.sh)
brew install ruby
brew install rbenv
brew install tcl-tk
brew install pyenv
source /etc/bashrc
brew install eclipse-jee
sudo gem install cocoapods

mkdir -p "$HOME/Library/Application Support/Code/User/"
cat > "$HOME/Library/Application Support/Code/User/settings.json" << EOF
{
    "git.autofetch": true,
    "workbench.colorTheme": "Visual Studio Dark",
    "editor.wordWrap": "on",
    "rsp-ui.enableStartServerOnActivation": [
        {
            "id": "redhat.vscode-community-server-connector",
            "name": "Community Server Connector",
            "startOnActivation": true
        }
    ],
    "tabnine.experimentalAutoImports": true,
    "sqldeveloper.sqlHistory.historyLimit": 500,
    "python.defaultInterpreterPath": "$HOME/.venv/bin/python",
}
EOF

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
sudo chown -R $(whoami) $HOME/.local
nvim +'CocInstall -sync coc-json coc-tsserver coc-eslint coc-java coc-flutter' +qall

