# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.box = "precise64"
  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :puppet do |puppet|
    puppet.manifest_file = "site.pp"
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
  end


  # config.vm.define :master do |master_conf|
  #   master_conf.vm.host_name = "master.vagrant"
  #   master_conf.vm.network :hostonly, "33.33.66.100"
  #   master_conf.vm.customize ["modifyvm", :id, "--memory", "1024"]
  #   master_conf.vm.customize ["modifyvm", :id, "--name", "master"]
  # end


  # [1].each do |i|
  #   vmname = "slave#{i}"
  #   config.vm.define vmname.to_sym do |conf|
  #     conf.vm.host_name = "#{vmname}.vagrant"
  #     conf.vm.network :hostonly, "33.33.66.#{i+100}"
  #     conf.vm.customize ["modifyvm", :id, "--memory", "512"]
  #     conf.vm.customize ["modifyvm", :id, "--name", vmname]
  #   end
  # end


  config.vm.define :hiveserver do |conf|
    conf.vm.host_name = "hiveserver.vagrant"
    conf.vm.network :hostonly, "33.33.66.120"
    conf.vm.customize ["modifyvm", :id, "--memory", "1024"]
    conf.vm.customize ["modifyvm", :id, "--name", "hiveserver"]
  end

  # [1].each do |i|
  #   vmname = "zookeeper#{i}.vagrant"
  #   config.vm.define vmname.to_sym do |conf|
  #     conf.vm.host_name = vmname
  #     conf.vm.network :hostonly, "33.33.66.#{i+110}"
  #     conf.vm.customize ["modifyvm", :id, "--memory", "256"]
  #     conf.vm.customize ["modifyvm", :id, "--name", vmname]
  #   end
  # end
end
