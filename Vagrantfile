# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :m1 do |m1|
    m1.vm.box = "precise32"
    m1.vm.box_url = "http://files.vagrantup.com/precise64.box"
    m1.vm.network "private_network", ip: "10.2.2.2"
    m1.vm.synced_folder "shared", "/home/vagrant/shared"
    m1.vm.provision :shell, :path => "provision.sh"
  end

  config.vm.define :m2 do |m2|
    m2.vm.box = "precise32"
    m2.vm.box_url = "http://files.vagrantup.com/precise64.box"
    m2.vm.network "private_network", ip: "10.2.2.3"
    m2.vm.synced_folder "shared", "/home/vagrant/shared"
    m2.vm.provision :shell, :path => "provision.sh"
  end
end
