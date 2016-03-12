#!/bin/bash

SOURCE=$( readlink -f "${BASH_SOURCE[0]}" )
HERE=$( dirname $SOURCE )
CMD=$(php -f "$HERE/mysql.php")

mysql $CMD
