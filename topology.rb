# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
    config.vm.define "ASR9000" do |node|
      node.vm.box =  "IOS-XRv"
 
      # gig0/0/0/0 connected to link1, gig0/0/0/1 connected to link2, gig0/0/0/2 connected to link3, auto-config not supported.
 
      node.vm.network :private_network, virtualbox__intnet: "link1", auto_config: false
      node.vm.network :private_network, virtualbox__intnet: "link2", auto_config: false
      node.vm.network :private_network, virtualbox__intnet: "link3", auto_config: false
      node.vm.network :private_network, virtualbox__intnet: "link4", auto_config: false
    end
 
    config.vm.define "NCS5500_1" do |node|
      node.vm.box =  "IOS-XRv"
 
      # gig0/0/0/0 connected to link1, gig0/0/0/1 connected to link4, gig0/0/0/2 connected to link5, auto-config not supported
 
      node.vm.network :private_network, virtualbox__intnet: "link1", auto_config: false
      node.vm.network :private_network, virtualbox__intnet: "link5", auto_config: false
      node.vm.network :private_network, virtualbox__intnet: "link6", auto_config: false
    end
 
    config.vm.define "NCS5500_2" do |node|
      node.vm.box =  "IOS-XRv"
 
      # gig0/0/0/0 connected to link1, gig0/0/0/1 connected to link4, gig0/0/0/2 connected to link5, auto-config not supported
      node.vm.network :private_network, virtualbox__intnet: "link2", auto_config: false
      node.vm.network :private_network, virtualbox__intnet: "link7", auto_config: false
      node.vm.network :private_network, virtualbox__intnet: "link8", auto_config: false
 
    end
end
