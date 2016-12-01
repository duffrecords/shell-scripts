#!/bin/bash
# requires nmap installed

if [ $# -ne 1 ]; then
    echo "Usage: $0 MACaddress|OUI"
    exit 1
fi

OUI_PREFIXES=/usr/share/nmap/nmap-mac-prefixes
HWADDRESS="$(echo $@ | egrep -o '([0-9A-Za-z]{2}:?){2,5}[0-9A-Za-z]{2}')"
if [[ "$HWADDRESS" != "" ]]; then
    FORMATTED="$(echo $HWADDRESS | sed 's/\([0-9A-Za-z]\+\)\:\([0-9A-Za-z]\+\)\:\([0-9A-Za-z]\+\).*/\1\2\3/g' | tr [a-z] [A-Z])"
    VENDOR="$(grep $FORMATTED $PREFIXES | cut -d' ' -f2-)"
    echo $VENDOR
fi
