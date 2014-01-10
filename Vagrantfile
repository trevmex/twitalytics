Vagrant.configure("2") do |config|
  config.vm.box = "base-jruby"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file = "site.pp"
  end
  config.vm.network "forwarded_port", guest: 80, host: 8000
end
