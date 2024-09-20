#!/bin/bash

check_wpa_passphrase() {
    if ! command -v wpa_passphrase &> /dev/null; then
        echo "Error: wpa_passphrase command not found. Please install it and try again." >&2
        exit 1
    fi
}

usage() {
    echo "Usage: $0 <SSID>" >&2
    exit 1
}

check_wpa_passphrase

if [ $# -ne 1 ]; then
    usage
fi

SSID="$1"

read -r -s -p "Password: " PASSWORD
echo

if ! CONFIG=$(wpa_passphrase "$SSID" "$PASSWORD" | grep -v "#psk="); then
    echo "Error: Failed to generate configuration." >&2
    exit 1
fi

echo "$CONFIG"
