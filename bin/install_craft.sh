#!/bin/bash

wget -O latest.zip http://buildwithcraft.com/latest.zip?accept_license=yes
mv latest.zip?accept_license=yes latest.zip
mv public public_custom

unzip latest.zip
rm latest.zip

rm -rf public
mv public_custom public

mkdir config/local
cp config/db.php config/local/
cp config/general.php config/local/

rm -rf craft/config
rm -rf craft/plugins
rm -rf craft/templates

./bin/update_permissions.sh
