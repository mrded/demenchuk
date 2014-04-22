# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'precise32'
  config.vm.box_url  = 'http://files.vagrantup.com/precise32.box'
  config.vm.hostname = 'secularmediums.local'

  config.vm.provider 'vmware_fusion' do |v, override|
    override.vm.box     = 'precise64'
    override.vm.box_url = 'http://files.vagrantup.com/precise64_vmware.box'
  end

  config.vm.network :forwarded_port, guest: 9292, host: 9292

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
  end
end
