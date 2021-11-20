#!/bin/bash
cd "$(dirname $0)"
brew install xonsh
ln -sf $PWD/xonshrc $HOME/.xonshrc 
