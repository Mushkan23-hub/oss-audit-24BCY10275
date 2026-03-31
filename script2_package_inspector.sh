#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Mushkan Bhagat | Reg No: 24BCY10275

PACKAGE="git"

echo "============================================"
echo "        FOSS Package Inspector"
echo "============================================"

if dpkg -l "$PACKAGE" &>/dev/null 2>&1; then
    echo "YES — $PACKAGE is installed."
    dpkg -l "$PACKAGE" | grep "$PACKAGE" | awk '{print "Version : "$3}'
elif rpm -q "$PACKAGE" &>/dev/null 2>&1; then
    echo "YES — $PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "NO — $PACKAGE is not installed."
    echo "Run: sudo apt install git"
fi

echo ""
case $PACKAGE in
    git)
        echo "Git: Built by Linus Torvalds in 2005 after BitKeeper"
        echo "revoked free access. GPL v2 keeps it free forever."
        ;;
    httpd|apache2)
        echo "Apache: Powers roughly 30 percent of all websites."
        ;;
    mysql|mariadb)
        echo "MySQL: Dual-licensed — open source meets business."
        ;;
    vlc)
        echo "VLC: A student project that plays everything."
        ;;
    *)
        echo "$PACKAGE: Open source — free to use, study and share."
        ;;
esac
echo "============================================"
