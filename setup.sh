#!/bin/bash
cd "$(dirname $0)"
if ! fgrep init.src ~/.bashrc
then echo source $PWD/init.src >>~/.bashrc
fi
if ! which brew ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if
if ! which xonsh ; then 
    brew install xonsh 
    ln -sf $PWD/xonshrc $HOME/.xonshrc 
    xonsh -c "xpip install xontrib-prompt-bar"
fi
if which nodenv
then brew install nodenv
fi
if which pyenv
then brew install pyenv
fi
if which goenv
then brew install goenv
fi

