#!/bin/bash

HERE=$( dirname "${BASH_SOURCE[0]}" )
CMD=$(php -f "$HERE/mysql.php")

mysql $CMD
