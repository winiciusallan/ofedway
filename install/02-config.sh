#!/bin/bash

export OFEDWAY_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export OFEDWAY_USER_MAIL=$(gum input --placeholder "Enter your email" --prompt "Mail> ")

git config --global user.name ${OFEDWAY_USER_NAME}
git config --global user.email ${OFEDWAY_USER_MAIL}

# Import dotfiles
stow -d ~/dotfiles/ -t ~/.config config
