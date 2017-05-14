# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'lightsp-ubuntu-kitchen'
    vb.memory = '2048'

  end

  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = './Berksfile'

  config.vm.provision :chef_solo do |chef|
    chef.node_name = 'lightsp-ubuntu-kitchen'
    chef.cookbooks_path = [ 'cookbooks' ]
    chef.add_recipe 'main::default'
    chef.nodes_path = 'nodes'
    chef.roles_path = 'roles'
    chef.run_list = ['role[sample_app1]']
  end

end
