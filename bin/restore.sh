#!/bin/bash

SOURCE=$( readlink -f "${BASH_SOURCE[0]}" )
HERE=$( dirname $SOURCE )
BACKUP=$( readlink -f "$HERE/../data/backup.sql" )

cd $HERE && ./open_db.sh < $BACKUP
