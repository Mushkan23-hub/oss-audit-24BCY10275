#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Mushkan Bhagat | Reg No: 24BCY10275

echo "=============================================="
echo "     OPEN SOURCE MANIFESTO GENERATOR"
echo "=============================================="
echo ""
echo "Answer 3 questions to create your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you?  " FREEDOM
read -p "3. Name one thing you would build and share:    " BUILD

DATE=$(date '+%d %B %Y')
TIME=$(date '+%H:%M')
OUTPUT="manifesto_$(whoami).txt"

> "$OUTPUT"
echo "==============================================" >> "$OUTPUT"
echo "       MY OPEN SOURCE MANIFESTO"              >> "$OUTPUT"
echo "  By: Mushkan Bhagat | 24BCY10275"            >> "$OUTPUT"
echo "  Date: $DATE at $TIME"                        >> "$OUTPUT"
echo "==============================================" >> "$OUTPUT"
echo ""                                              >> "$OUTPUT"
echo "I believe in open source because every day"   >> "$OUTPUT"
echo "I use $TOOL — built for people, not profit."  >> "$OUTPUT"
echo "To me, freedom means $FREEDOM."               >> "$OUTPUT"
echo ""                                              >> "$OUTPUT"
echo "I will one day build $BUILD and release it"   >> "$OUTPUT"
echo "freely — because good tools belong to all."   >> "$OUTPUT"
echo ""                                              >> "$OUTPUT"
echo "— Mushkan Bhagat | $DATE"                     >> "$OUTPUT"
echo "==============================================" >> "$OUTPUT"

echo ""
echo "Saved to: $OUTPUT"
echo ""
cat "$OUTPUT"
