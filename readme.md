# Craft CMS Boilerplate

## Prerequisites
- [wget](https://www.gnu.org/software/wget/)
- [git](https://git-scm.com/downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [GnuPG](https://www.gnupg.org/)

## Installing the Boilerplate
- Pull the code
    `git clone git@github.org:spleenboy/boilerplate-craft.git ./`
- Remove git tracking
    `rm -rf .git`

## Setting Up Your Development Environment
- Install Craft
    `./bin/install_craft.sh`
- Install the vagrant image.
    `./bin/install_vagrant.sh`
- Start up Vagrant. This will take a while the first time.
    `vagrant up`
- Create a database.
    - [phpMyAdmin](http://localhost:9000/)
    - Click on "Create new database"
    - Call it `boilerplate` and use the `utf8_unicode_ci` Collation.
- [Install Craft](http://localhost:8080/admin) or restore from a backup

## Making a Local Database Backup
- [Settings > Backup Database](http://localhost:8080/admin/settings). Uncheck "Download".
- `bin/vagrant.sh bin/backup.sh`

## Restoring Locally from a Database Backup
- `bin/vagrant.sh bin/restore.sh`

## `bin/vagrant.sh`
This script allows you to pass commands to a running vagrant instance. It's the lazy way of typing `vagrant ssh -c '/vagrant/bin/command.sh'` You don't need to use it if you're logged in to your vagrant instance or an active server.
