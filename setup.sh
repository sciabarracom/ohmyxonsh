#!/bin/bash

cd "$(dirname $0)"
if ! fgrep init.src ~/.bashrc
then echo source $PWD/init.src >>~/.bashrc
fi

git config --global user.email "michele@sciabarra.com"
git config --global user.name "Michele Sciabarra"
if ! which brew 
then /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
if ! which xonsh 
then brew install xonsh 
     ln -sf $PWD/xonshrc $HOME/.xonshrc 
fi
xonsh -c "xpip install xontrib-prompt-bar"
xonsh -c "xpip install xontrib-z"
if ! which nodenv
then brew install nodenv
fi
if ! which pyenv
then brew install pyenv
fi
if ! which goenv
then brew install goenv
fi
