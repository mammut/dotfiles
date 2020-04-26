# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "fedora/31-cloud-base"
  config.vm.box_version = "31.20191023.0"

  config.vm.synced_folder "./", "/home/vagrant/dotfiles"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  # Install zsh
  config.vm.provision :shell, inline: "yum -y install zsh util-linux-user \
    tmux vim"

  # Change the vagrant user's shell to use zsh
  config.vm.provision :shell, inline: "chsh -s /bin/zsh vagrant"
end
