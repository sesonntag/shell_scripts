#!/bin/bash
#
#*******************************************************************************
# Title: rsync_home_to_wd_2000.sh
# Description: copy files from users dir to external hard drive wd_2000
# Author: Sebastian Sonntag
# Date: 2018-09-30
# License:
#*******************************************************************************

echo "******************************************************************************"
echo "Syncing now:"
echo "     /Users/sebastiansonntag/"
echo "     /Volumes/iCloud Drive/"
echo ""


rsync --stats -h -a -H -x --info=progress2 --update --delete --exclude-from='/Users/sebastiansonntag/System/Multiplattform/Skripte/rsync_exclude_in_home.txt' ~/ /Volumes/wd_2000/sebastians_backups/sebastian/ # without backup

rsync --stats -h -a -H -x --info=progress2 -L -P --update --delete ~/iCloud /Volumes/wd_2000/sebastians_backups/iCloud_Drive/ # without backup


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
