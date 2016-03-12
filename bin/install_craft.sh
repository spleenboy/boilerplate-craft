#!/bin/bash

wget -O latest.zip http://buildwithcraft.com/latest.zip?accept_license=yes
mv latest.zip?accept_license=yes latest.zip
mv public public_custom

unzip latest.zip
rm latest.zip

rm -rf public
mv public_custom public

mkdir config/local
cp craft/config/db.php craft/config/local/db.php
cp craft/config/general.php craft/config/local/general.php

rm -rf craft/config
rm -rf craft/plugins
rm -rf craft/templates
