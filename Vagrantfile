# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.provision :docker
  config.vm.provision :shell, inline: <<-EOF
    script=/usr/local/bin/build-image
    echo '#!/bin/sh' > $script
    echo 'docker build -t fkrull/multi-python /vagrant' >> $script
    chmod +x $script
  EOF
end
