#!/bin/bash

HERE=$( dirname "${BASH_SOURCE[0]}" )
ENCRYPTED="$HERE/../data/backup.sql.gpg"
BACKUP="$HERE/../data/backup.sql"

gpg "$ENCRYPTED"
$HERE/open_db.sh < $BACKUP
rm "$BACKUP"
