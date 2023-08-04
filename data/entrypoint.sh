#!/bin/bash

# Install powerlevel10k
if [ ! -d "/opt/zsh/plugins" ]; then
    mkdir -p /opt/zsh/plugins
fi

if [ ! -d "/opt/zsh/plugins/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /opt/zsh/plugins/powerlevel10k
fi

if [ ! -d "/opt/zsh/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /opt/zsh/plugins/zsh-syntax-highlighting
fi

if [ ! -d "/opt/zsh/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions /opt/zsh/plugins/zsh-autosuggestions
fi