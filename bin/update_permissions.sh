#!/bin/bash

find ./ -type f -exec chmod 0664 {} +
find ./ -type d -exec chmod 0775 {} +
chmod 0777 ./app/config/
chmod 0777 ./app/craft/storage/
