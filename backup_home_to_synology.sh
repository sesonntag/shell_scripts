#!/bin/bash
#
#*******************************************************************************
# Title: backup_home_to_synology.sh
# Description: copy files from users dir to Synology DiskStation NAS
# Author: Sebastian Sonntag
# Date: 2019-02-28
# License:
#*******************************************************************************

echo "*************************************************************************"
echo "Syncing now:"
echo "     sebastians home dir"
echo "     iCloud Drive"
echo ""
echo "-------------------------------------------------------------------------"
echo "task: sebastians home dir"
rsync -h -a -H -x -r -v --info=progress2 --update --delete -e ssh --exclude-from='/Users/sebastiansonntag/System/Scripts/rsync_exclude_in_home.txt' ~/ sebastian@192.168.1.47:/volume1/homes/sebastian/backups/mac_book_pro/
echo "-------------------------------------------------------------------------"
echo ""
echo "-------------------------------------------------------------------------"
echo "task: sebastians icloud"
rsync -h -a -H -x -r -v --info=progress2 -L --update --delete -e ssh ~/iCloud sebastian@192.168.1.47:/volume1/homes/sebastian/backups/icloud_drive/
echo "-------------------------------------------------------------------------"
echo ""
echo ""
echo "Successful. All files have been synced correctly."
echo "*************************************************************************"
