# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos-7"

  config.ssh.forward_agent = true


  config.vm.network "forwarded_port", guest: 4567, host: 8080

  config.vm.synced_folder "~/Code/footy", "/home/vagrant/code"

  config.git.add_repo do |rc|
    rc.target = 'git@github.com:spannerj/lrfantasy.git'
    rc.path = '/home/vagrant/code'
    rc.branch = 'master'
    rc.clone_in_host = true
  end

  config.vm.provision :shell, path: "install.sh"
  config.vm.provision :shell, path: "install-rvm.sh", args: "stable", privileged: false
  config.vm.provision :shell, path: "install-ruby.sh", args: "2.0.0 bundler", privileged: false



  config.vm.provision :shell, path: "post-install.sh"
end