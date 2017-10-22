# -*- mode: ruby -*-
# vi: set ft=ruby :

# Reference:
# https://qbox.io/blog/qbox-a-vagrant-virtual-machine-for-elasticsearch-2-x

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, host: 9200, guest: 9200
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 1
    v.name = "Elasticsearch"
  end
end
