#!/bin/bash
#
#*******************************************************************************
# Title: backup_home_to_synology.sh
# Description: copy files from users dir to Synology DiskStation NAS
# Author: Sebastian Sonntag
# Date: 2020-05-07
# License:
#*******************************************************************************

echo "*************************************************************************"
echo "Syncing now: Sebastians home dir"
rsync -a -h -x -v --info=progress2 --delete --copy-links --exclude-from='/Users/sebastiansonntag/OneDrive/System/shell_scripts/rsync_exclude_in_home.txt' -e ssh ~/ admin@192.168.1.47:/volume1/homes/sebastian/backups/mac_book_pro/
echo "-------------------------------------------------------------------------"
echo ""
echo ""
echo "Successful. All files have been synced correctly."
echo "*************************************************************************"
