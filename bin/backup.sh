#!/bin/bash

HERE=$( dirname ${BASH_SOURCE[0]} )
DATA="$HERE/../data"
BACKUPS="$HERE/../craft/storage/backups"

LATEST=$( ls -t "$BACKUPS" | head -1 )
FILE="$BACKUPS/$LATEST"

FULL="$DATA/backup.sql"

# Copy the full file
cp "$FILE" "$FULL"
gpg -c "$FULL"
rm "$FULL"
