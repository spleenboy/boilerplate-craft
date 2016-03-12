git clone https://github.com/enovatedesign/vagrant-craft.git vagrant
cd vagrant
    git submodule update --init
    mkdir logs
    mv .Vagrantfile ../Vagrantfile
cd ..
    vagrant plugin install vagrant-cachier

echo "Done!"
echo "Start your application with vagrant up."
