#!/bin/bash

function install_deps() {
    echo '[charm]
    name=Charm
    baseurl=https://repo.charm.sh/yum/
    enabled=1
    gpgcheck=1
    gpgkey=https://repo.charm.sh/yum/gpg.key' | sudo tee /etc/yum.repos.d/charm.repo
    sudo rpm --import https://repo.charm.sh/yum/gpg.key

    sudo yum install -y \
        gum stow
}

function configure_rpm() {
    sudo dnf -y group update core
    sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
}

configure_rpm && install_deps
