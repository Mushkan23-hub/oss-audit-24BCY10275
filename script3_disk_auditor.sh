#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Mushkan Bhagat | Reg No: 24BCY10275

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "         DIRECTORY AUDIT REPORT"
echo "=============================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "  Directory  : $DIR"
        echo "  Permissions: $PERMS"
        echo "  Owner      : $OWNER / $GROUP"
        echo "  Size       : $SIZE"
        echo "----------------------------------------------"
    else
        echo "  $DIR does not exist on this system"
        echo "----------------------------------------------"
    fi
done

echo ""
echo "  Checking Git config..."
if [ -f "$HOME/.gitconfig" ]; then
    PERMS=$(ls -l "$HOME/.gitconfig" | awk '{print $1, $3, $4}')
    echo "  Git config found: $HOME/.gitconfig"
    echo "  Permissions: $PERMS"
else
    echo "  No .gitconfig found yet."
    echo "  Run: git config --global user.name 'Mushkan Bhagat'"
fi
echo "=============================================="
