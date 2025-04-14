#!/bin/bash

# Folder to backup
SOURCE_FOLDER="/home/user/documents"
# Backup destination
BACKUP_FOLDER="/home/user/backups"
# Filename with current date
FILENAME="backup-$(date +%Y-%m-%d).tar.gz"

# Create backup
tar -czf $BACKUP_FOLDER/$FILENAME $SOURCE_FOLDER

echo "Backup of $SOURCE_FOLDER completed!"
echo "Saved as $BACKUP_FOLDER/$FILENAME"

