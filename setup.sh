#!/bin/bash
which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install xonsh 
ln -sf $PWD/xonshrc $HOME/.xonshrc 
