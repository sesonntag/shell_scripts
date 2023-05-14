#!/bin/bash
#
#*******************************************************************************
# Title: rsync_synology_to_wd2000.sh
# Description: backup files from Synology DiskStation to external hdd wd2000
# Author: Sebastian Sonntag
# Date: 2020-07-02
# License:
#*******************************************************************************

### rsync commands to rsync each directory incl. all subdirectories #
echo "*************************************************************************"
echo "Syncing now:"
echo "     /volume1/homes/admin"
echo "     /volume1/homes/laura"
echo ""
echo "-------------------------------------------------------------------------"
echo "task: admin (sebastians) home dir on synology"
rsync -h -a -H -x -r -v --info=progress2 --update --delete --exclude '@eaDir*' -e ssh admin@192.168.1.47:/volume1/homes/admin /Volumes/wd2000/backups_synology_ds218/
echo "-------------------------------------------------------------------------"
echo ""
echo "-------------------------------------------------------------------------"
echo "task: lauras home dir on synology"
rsync -h -a -H -x -r -v --info=progress2 --update --delete --exclude '@eaDir*' -e ssh admin@192.168.1.47:/volume1/homes/laura /Volumes/wd2000/backups_synology_ds218/
echo "-------------------------------------------------------------------------"
echo ""
echo ""
echo "Successful. All files have been synced correctly."
echo "*************************************************************************"
