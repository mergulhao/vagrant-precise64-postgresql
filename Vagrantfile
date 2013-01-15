Vagrant::Config.run do |config|
  config.vm.host_name = "postgresql.box"
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.forward_port 5432, 5432
  config.vm.provision :puppet, :module_path => ["manifests"]
end