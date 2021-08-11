#!/bin/bash
cd "$(dirname $0)"
sudo apt-get install fuse wget
test -e xonsh-x86_64.AppImage && rm xonsh-x86_64.AppImage
wget https://github.com/xonsh/xonsh/releases/latest/download/xonsh-x86_64.AppImage
chmod +x xonsh-x86_64.AppImage
sudo ln -sf $PWD/xonsh-x86_64.AppImage /usr/bin/xonsh
ln -sf $PWD/xonshrc $HOME/.xonshrc 
