# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  
  config.vm.box = "centos-6.5"



   config.vm.network "forwarded_port", guest: 80, host: 8080
   config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
   config.vm.network "private_network", ip: "192.168.33.34"

   config.berkshelf.enabled = true
  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  config.omnibus.chef_version = :latest
  config.vm.provision :chef_solo do |chef|
  chef.json = {
        "mysql" => {
            "server_root_password" => '121212',
	    "server_debian_password" => '121212',
            "server_repl_password" => '121212'	
        }
    }
	chef.run_list = [
        "recipe[finallamp::vhost]",
		"recipe[finallamp::mysql]",
		"recipe[finallamp::php]"
		]
  end
  
end
