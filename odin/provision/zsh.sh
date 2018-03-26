#!/usr/bin/env bash

echo "Installing Go"

VERSION=1.10
OS=linux-amd64

which go
RESULT=$?

if [ $RESULT -eq 0 ]; then
    echo "Go already installed"
else
    echo "Version: go$VERSION.$OS"
    wget -q https://dl.google.com/go/go$VERSION.$OS.tar.gz -O /tmp/go$VERSION.$OS.tar.gz
    sudo tar -C /usr/local -xzf /tmp/go$VERSION.$OS.tar.gz
    rm -f /tmp/go$VERSION.$OS.tar.gz
    echo "PATH=\$PATH:/usr/local/go/bin" >> ~/.bash_profile
    echo "PATH=\$PATH:/usr/local/go/bin" >> ~/.zshrc
fi
