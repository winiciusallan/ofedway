#!/bin/bash

if ! [[ command -v nvim &>/dev/null ]]; then
    dnf install -y neovim fzf

    # Remove existing config
    if [[ -d ~/.config/nvim ]]; then
        rm -rf ~/.config/nvim
    fi

    stow --target=~/.config --dir=~/dotfiles/ nvim
fi

