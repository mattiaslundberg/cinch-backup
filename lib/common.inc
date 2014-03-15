#!/bin/bash
# Copyright (C) 2014 Mattias Lundberg
# based on code by arch-backup copyright (C) 2007-2014 Sergej Pupykin
# License: http://www.gnu.org/licenses/gpl.html GPL version 2 or higher

[ "x$BACKUP_DIR" == "x" ] && BACKUP_DIR="./"

C_CLEAR="\033[1;0m"
C_FAIL="\033[1;31m"
C_DONE="\033[1;37m"

MSG_OK="${C_DONE}OK${C_CLEAR}"
MSG_ERROR="${C_FAIL}ERROR!${C_CLEAR}"

C_SEL=`(echo bold && echo setab 1) | tput -S`
C_NORM=`(echo op && echo sgr0) | tput -S`

cleardir() {
	echo "Clearing `pwd`"
	[ $# -eq 0 ] && { echo "cleardir failed"; exit 1; }
	ls -1 | sort | head -n -$1 | while read A; do
		echo "Removing $A..."
		rm -rf $A
	done
}
