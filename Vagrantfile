# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.provision :docker
  config.vm.provision :shell, inline: <<-EOF
    echo cd /vagrant >> ~vagrant/.profile
  EOF
end
