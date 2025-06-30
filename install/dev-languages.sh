#!/bin/bash

options=("Golang" "Java")

LANGUAGES=$(gum choose --no-limit ${options[@]})

for lang in $LANGUAGES; do
    case "$lang" in
    Golang)
        URL=https://go.dev/dl/go1.24.4.linux-amd64.tar.gz
        wget -O ~/$(echo $URL | awk -F'/' '{print $NF}') $URL
        sudo rm -rf /usr/local/go
        sudo tar -C /usr/local -xzf ~/go1.24.4.linux-amd64.tar.gz
        echo "export PATH=$PATH:/usr/local/go/bin" >>~/.bashrc
        ;;
    Java)
        sudo dnf install -y java-latest-openjdk.x86_64
        ;;
    esac

done
