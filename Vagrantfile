# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "lucid32"

  config.vm.forward_port 3000, 3000
  config.vm.forward_port 9292, 9292
  config.vm.forward_port 4567, 4567

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe "apt"
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::user'
#    chef.add_recipe 'postgresql'
    chef.json = {
      'rbenv' => {
         'user_installs' => [{
            'user' => 'vagrant',
            'rubies' => ['2.0.0-p0'],
            'global' => '2.0.0-p0'
         }]
      }
    }
  end
end

