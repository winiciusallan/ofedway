#!/bin/bash

export OFERWAY_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export OFERWAY_USER_MAIL=$(gum input --placeholder "Enter your email" --prompt "Mail> ")

git config --global user.name ${OFERWAY_USER_NAME}
git config --global user.mail ${OFERWAY_USER_MAIL}
