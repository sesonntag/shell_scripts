#!/bin/bash
#
#**********************************************************************************************
# Title: rsync_from_core_750_to_wd_2000.sh
# Description: copy files from external hard drive core_750 to wd_2000
# Author: Sebastian Sonntag
# Date: 2016-08-24
# License:
#**********************************************************************************************


### rsync commands to rsync each directory incl. all subdirectories #
echo "******************************************************************************"
echo "Syncing now:"
echo "     /Volumes/core_750/sebastian"
echo "     /Volumes/core_750/iCloud_Drive"
echo "     /Volumes/core_750/transcend"
echo "     /Volumes/core_750/extern"


echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/core_750/sebastian"
rsync --stats -h -a -H -x -P --update --delete /Volumes/core_750/sebastian/ /Volumes/wd_2000/sebastians_backups/sebastian/
echo "--------------------------------------------------------------"
echo ""

echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/core_750/icloud Drive"
rsync --stats -h -a -H -x -P --update --delete /Volumes/core_750/iCloud_Drive /Volumes/wd_2000/sebastians_backups/iCloud_Drive/
echo "--------------------------------------------------------------"
echo ""

echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/core_750/transcend"
rsync --stats -h -a -H -x -P --update --delete /Volumes/core_750/transcend/ /Volumes/wd_2000/sebastians_backups/transcend/
echo "--------------------------------------------------------------"
echo ""


echo ""
echo ""
echo "--------------------------------------------------------------"
echo "path: /Volumes/core_750/extern"
rsync --stats -h -a -H -x -P --update --delete /Volumes/core_750/extern/ /Volumes/wd_2000/sebastians_backups/extern/
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
