#!/bin/bash

chgrp -R www-data .
chown -R www-data .
find ./ -type f -exec chmod 0664 {} +
find ./ -type d -exec chmod 0744 {} +
find ./bin/ -type f -exec chmod 0774 {} +

find ./config -type d -exec chmod 0744 {} +
find ./craft/storage -type d -exec chmod 0744 {} +
