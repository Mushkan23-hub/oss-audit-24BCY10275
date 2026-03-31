#!/bin/bash
# Script 4: Log File Analyzer
# Author: Mushkan Bhagat | Reg No: 24BCY10275
# Usage: ./script4_log_analyzer.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "File not found: $LOGFILE — searching for alternative..."
    for ALTLOG in "/var/log/syslog" "/var/log/kern.log" "/var/log/dpkg.log" "/var/log/auth.log"; do
        if [ -f "$ALTLOG" ]; then
            echo "Using: $ALTLOG"
            LOGFILE="$ALTLOG"
            break
        fi
    done
    if [ ! -f "$LOGFILE" ]; then
        echo "No log files found. Exiting."
        exit 1
    fi
fi

echo "=============================================="
echo "           LOG FILE ANALYZER"
echo "  File    : $LOGFILE"
echo "  Keyword : $KEYWORD"
echo "----------------------------------------------"

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "  '$KEYWORD' found $COUNT times."
echo ""
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "=============================================="
