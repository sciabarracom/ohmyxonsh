#!/bin/bash
cd "$(dirname $0)"
if ! fgrep init.src ~/.bashrc
then echo source $PWD/init.src >>~/.bashrc
fi
git config --global user.email "michele@sciabarra.com"
git config --global user.name "Michele Sciabarra"
if ! which brew ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if
if ! which xonsh ; then 
    brew install xonsh 
    ln -sf $PWD/xonshrc $HOME/.xonshrc 
    xonsh -c "xpip install xontrib-prompt-bar"
fi
if ! which nodenv
then brew install nodenv
fi
if ! which pyenv
then brew install pyenv
fi
if ! which goenv
then brew install goenv
fi
if ! test -d $HOME/.jenv
then git clone https://github.com/jenv/jenv.git ~/.jenv
fi
if ! which docker ; then 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
