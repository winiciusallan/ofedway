#!/bin/bash

dnf copr enable pgdev/ghostty

dnf install -y ghostty tldr

if [[ -d ~/.config/ghostty ]]; then
    rm ~/.config/ghostty/*
else
    mkdir -p ~/.config/ghostty
fi
