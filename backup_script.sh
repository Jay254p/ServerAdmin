#!/bin/bash


source_dir1="/home/CentOSAdmin/Staff"
source_dir2="/home/CentOSAdmin/Students""
backup_dir="/home/CentOSAdmin/DirBackup"


timestamp=$(date +"%Y%m%d%H%M%S")

backup_folder="$backup_dir/backup_$timestamp"
mkdir -p "$backup_folder"

cp -r "$source_dir1"/* "$backup_folder"

cp -r "$source_dir2"/* "$backup_folder"


tar -czf "$backup_folder.tar.gz" "$backup_folder"


find "$backup_dir" -type d -ctime +1 -exec rm -rf {} \;

