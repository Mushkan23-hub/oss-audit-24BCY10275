#!/bin/bash
# Script 1: System Identity Report
# Author: Mushkan Bhagat | Reg No: 24BCY10275
# Course: Open Source Software

STUDENT_NAME="Mushkan Bhagat"
REG_NUMBER="24BCY10275"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%d %B %Y')
CURRENT_TIME=$(date '+%H:%M:%S')
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

echo "======================================================="
echo "     OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT"
echo "======================================================="
echo ""
echo "  Student  : $STUDENT_NAME ($REG_NUMBER)"
echo "  Software : $SOFTWARE_CHOICE"
echo ""
echo "  Distribution   : $DISTRO"
echo "  Kernel Version : $KERNEL"
echo "  Logged-in User : $USER_NAME"
echo "  Home Directory : $HOME_DIR"
echo "  System Uptime  : $UPTIME"
echo "  Current Date   : $CURRENT_DATE"
echo "  Current Time   : $CURRENT_TIME"
echo ""
echo "  LICENCE NOTE: Linux kernel is under GPL v2."
echo "  You can run, study, share and modify it freely."
echo "======================================================="
