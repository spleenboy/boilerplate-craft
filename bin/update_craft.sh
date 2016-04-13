#!/bin/bash

mkdir craft-update
wget -O latest.zip http://buildwithcraft.com/latest.zip?accept_license=yes
mv latest.zip craft-update/

cd craft-update
    unzip latest.zip
    rm latest.zip

    mv ../craft/app/ ../craft/app-old
    cp -r craft/app ../craft/app

cd ..
    rm -rf craft-update

bin/update_permissions.sh
