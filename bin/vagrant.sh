#!/bin/bash

if [ -n "$1" ]
then
    if [ -f "$1" ]
    then
        echo "vagrant ssh -c '/vagrant/$1'"

        if [ "$2" != "-d" ]
        then
            vagrant ssh -c "/vagrant/$1"
        fi
    else
        echo "$1 is not a valid file."
    fi
else
    echo "Passes command to running vagrant instance."
    echo
    echo "Usage:"
    echo " bin/vagrant.sh <LOCAL_PATH_TO_SCRIPT>"
    echo
    echo "Flags:"
    echo " -d  Dry run"
fi
