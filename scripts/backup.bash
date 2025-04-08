#!/usr/bin/env bash

# Backup directory
BACKUP_DIR="$HOME/backup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# List of files and directories to back up
FILES_TO_BACKUP=(
  "$HOME/.bashrc"
  "$HOME/.vimrc"
  "$HOME/.gitconfig"
  "$HOME/.config"
)

# Backup files
for FILE in "${FILES_TO_BACKUP[@]}"; do
  if [ -e "$FILE" ]; then
    cp -r "$FILE" "$BACKUP_DIR"
    echo "Backed up $FILE to $BACKUP_DIR"
  else
    echo "File $FILE does not exist and was not backed up"
  fi
done

echo "Backup completed!"
