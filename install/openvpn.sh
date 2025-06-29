#!/bin/bash

if ! command -v openvpn3; then
    sudo dnf copr enable -y dsommers/openvpn3
    sudo dnf install -y openvpn3-client
fi
