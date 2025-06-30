#!/bin/bash

if ! command -v nvim &>/dev/null; then
    dnf install -y neovim fzf
fi
