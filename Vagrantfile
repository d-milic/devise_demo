# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.network 'forwarded_port', guest: 3000, host: 3000
  config.vm.network 'forwarded_port', guest: 3306, host: 3306

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true

    vb.memory = '2048'
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['chef/cookbooks', 'chef/site-cookbooks']
    chef.roles_path = [[:host, 'chef/roles']]

    chef.add_role 'rails-dev'
  end
end
