#!/usr/bin/env bash

echo "Installing Oh My ZSH"

which zsh 
RESULT=$?

if [ $RESULT -eq 0 ]; then
    echo "ZSH already installed"
else
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc 
fi
