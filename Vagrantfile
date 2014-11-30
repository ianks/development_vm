# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network 'private_network', ip: '192.168.50.4'
  config.vm.synced_folder ENV['HOME'], '/home/vagrant/ianks', type: 'nfs'
  config.vm.provision :shell, path: 'bootstrap.sh'

  open_ports = [3000, 7474, 8000, 8080, 8765, 27017, 27018, 35729]

  open_ports.each do |port|
    config.vm.network 'forwarded_port',
      guest: port,
      host: port
  end

  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'development_vm'
    vb.memory = 8192
    vb.cpus = 4
  end
end
