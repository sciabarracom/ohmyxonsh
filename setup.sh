#!/bin/bash
which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
which xonsh || brew install xonsh 
ln -sf $PWD/xonshrc $HOME/.xonshrc 
xonsh -c "xpip install xontrib-prompt-bar"
