#!/bin/bash
if [ -n "$1" ]
then
    LOG="$1"
else
    LOG="craft.log"
fi

vagrant ssh -c "tail -f /vagrant/craft/storage/runtime/logs/$LOG"
