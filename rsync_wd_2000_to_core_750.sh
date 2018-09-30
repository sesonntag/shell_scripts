#!/bin/bash
#
#*******************************************************************************
# Title: rsync_wd_2000_to_core_750.sh
# Description: copy files from external hard drive wd_2000 to core_750
# Author: Sebastian Sonntag
# Date: 2018-09-30
# License:
#*******************************************************************************

### rsync commands to rsync each directory incl. all subdirectories #
echo "******************************************************************************"
echo "Syncing now:"
echo "     /Volumes/wd_2000/sebastian"
echo "     /Volumes/wd_2000/iCloud_Drive"
echo "     /Volumes/wd_2000/extern"
echo "     /Volumes/wd_2000/iMac"

echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/wd_2000/sebastians_backups/sebastian"
rsync  -h -a -H -x --info=progress2 --update --delete /Volumes/wd_2000/sebastians_backups/sebastian/ /Volumes/core_750/sebastian/
echo "--------------------------------------------------------------"
echo ""

echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/wd_2000/sebastians_backups/icloud Drive"
rsync  --info=progress2i -h -a -H -x --update --delete /Volumes/wd_2000/sebastians_backups/iCloud_Drive/ /Volumes/core_750/iCloud_Drive/
echo "--------------------------------------------------------------"
echo ""

echo ""
echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/wd_2000/sebastians_backups/extern"
rsync  -h -a -H --info=progress2 -x --update --delete /Volumes/wd_2000/sebastians_backups/extern/ /Volumes/core_750/extern/
echo "--------------------------------------------------------------"
echo ""

echo ""
echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/wd_2000/sebastians_backups/iMac"
rsync  -h --info=progress2 -a -H -x --update --delete /Volumes/wd_2000/sebastians_backups/iMac/ /Volumes/core_750/iMac/
echo "--------------------------------------------------------------"
echo ""

echo ""
echo "--------------------------------------------------------------"
echo ""
echo ""
echo "Successful. All files have been synced correctly."
echo "******************************************************************************"




### meanings of rsync options #
# stats -> Detailed statistic
# h -> human readable (Bytes -> GB)
# a -> Meta option (incl subdirectories, keep user rights, keep group rights, ...)
# v -> Verbose: show detailed information about status
# P -> Progress und Partial: show detailed information about the current file and proceed after an crash right from the spot
# H -> Hardlinks will be copied too
# x -> Only respect files in the same filesystem
# e -> Make use of a remote-shell (here SSH)
# update -> update
# delete -> Delete files which were deleted in the source directory
