# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.omnibus.chef_version = "12.11.18"
  config.vm.box = "generic/ubuntu1604"

  # Primary Master
  config.vm.define "primary" do |primary|

    primary.vm.hostname = "primary"
    primary.vm.network :private_network, ip: "172.31.255.10"

    primary.vm.provider 'libvirt' do |virt, o|
      virt.cpus = 2
      virt.memory = 2048
    end

    primary.vm.provision :chef_solo do |chef|

      chef.data_bags_path = "data_bags"
      chef.cookbooks_path = "vagrant-cookbooks"
      chef.encrypted_data_bag_secret_key_path = "vagrant_encrypted_data_bag_secret"
      chef.synced_folder_type = "rsync"

      chef.json = {
        :dirsrv => {
          :use_yum_epel => true
        }
      }

      chef.run_list = [
        "recipe[dirsrv::_vagrant_primary]"
      ]
    end
  end

  # Secondary Master
  config.vm.define "secondary" do |secondary|

    secondary.vm.hostname = "secondary"
    secondary.vm.network :private_network, ip: "172.31.255.11"

    secondary.vm.provider :libvirt do |virt, o|
      virt.cpus = 2
      virt.memory = 2048
    end

    secondary.vm.provision :chef_solo do |chef|

      chef.data_bags_path = "data_bags"
      chef.cookbooks_path = "vagrant-cookbooks"
      chef.encrypted_data_bag_secret_key_path = "vagrant_encrypted_data_bag_secret"
      chef.synced_folder_type = "rsync"

      chef.json = {
        :dirsrv => {
          :use_yum_epel => true
        }
      }

      chef.run_list = [
        "recipe[dirsrv::_vagrant_secondary]"
      ]
    end
  end

  # Tertiary Master
  config.vm.define "tertiary", autostart: false do |tertiary|

    tertiary.vm.hostname = "tertiary"
    tertiary.vm.network :private_network, ip: "172.31.255.12"

    tertiary.vm.provider :libvirt do |virt, o|
      virt.cpus = 2
      virt.memory = 2048
    end

    tertiary.vm.provision :chef_solo do |chef|

      chef.data_bags_path = "data_bags"
      chef.cookbooks_path = "vagrant-cookbooks"
      chef.encrypted_data_bag_secret_key_path = "vagrant_encrypted_data_bag_secret"
      chef.synced_folder_type = "rsync"

      chef.json = {
        :dirsrv => {
          :use_yum_epel => true
        }
      }

      chef.run_list = [
        "recipe[dirsrv::_vagrant_tertiary]"
      ]
    end
  end

  # Quaternary Master
  config.vm.define "quaternary", autostart: false do |quaternary|

    quaternary.vm.hostname = "quaternary"
    quaternary.vm.network :private_network, ip: "172.31.255.13"

    quaternary.vm.provider :libvirt do |virt, o|
      virt.cpus = 2
      virt.memory = 2048
    end

    quaternary.vm.provision :chef_solo do |chef|

      chef.data_bags_path = "data_bags"
      chef.cookbooks_path = "vagrant-cookbooks"
      chef.encrypted_data_bag_secret_key_path = "vagrant_encrypted_data_bag_secret"
      chef.synced_folder_type = "rsync"

      chef.json = {
        :dirsrv => {
          :use_yum_epel => true
        }
      }

      chef.run_list = [
        "recipe[dirsrv::_vagrant_quaternary]"
      ]
    end
  end

  # Hub
  config.vm.define "proxyhub", autostart: false do |proxyhub|

    proxyhub.vm.hostname = "proxyhub"
    proxyhub.vm.network :private_network, ip: "172.31.255.14"

    proxyhub.vm.provider :libvirt do |virt, o|
      virt.cpus = 2
      virt.memory = 2048
    end

    proxyhub.vm.provision :chef_solo do |chef|

      chef.data_bags_path = "data_bags"
      chef.cookbooks_path = "vagrant-cookbooks"
      chef.encrypted_data_bag_secret_key_path = "vagrant_encrypted_data_bag_secret"
      chef.synced_folder_type = "rsync"

      chef.json = {
        :dirsrv => {
          :use_yum_epel => true
        }
      }

      chef.run_list = [
        "recipe[dirsrv::_vagrant_proxyhub]"
      ]
    end
  end

  # Consumer
  config.vm.define "consumer", autostart: false do |consumer|

    consumer.vm.hostname = "consumer"
    consumer.vm.network :private_network, ip: "172.31.255.15"

    consumer.vm.provider :libvirt do |virt, o|
      virt.cpus = 2
      virt.memory = 2048
    end

    consumer.vm.provision :chef_solo do |chef|

      chef.data_bags_path = "data_bags"
      chef.cookbooks_path = "vagrant-cookbooks"
      chef.encrypted_data_bag_secret_key_path = "vagrant_encrypted_data_bag_secret"
      chef.synced_folder_type = "rsync"

      chef.json = {
        :dirsrv => {
          :use_yum_epel => true
        }
      }

      chef.run_list = [
        "recipe[dirsrv::_vagrant_consumer]"
      ]
    end
  end
end
