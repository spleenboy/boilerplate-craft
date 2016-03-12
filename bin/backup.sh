#!/bin/bash

SOURCE=$( readlink -f "${BASH_SOURCE[0]}" )
HERE=$( dirname $SOURCE )
DATA=$( readlink -f "$HERE/../data" )
BACKUPS=$( readlink -f "$HERE/../craft/storage/backups" )

LATEST=$( ls -t "$BACKUPS" | head -1 )
FILE="$BACKUPS/$LATEST"

FULL="$DATA/backup.sql"

# Copy the full file
cp "$FILE" "$FULL"
