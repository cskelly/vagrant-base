Vagrant.configure("2") do |config|
	config.vm.box = "precise32"
	config.vm.provision :shell, :path => "vagrant/bootstrap.sh"
	config.vm.network "private_network", ip: "192.168.56.101"
end
