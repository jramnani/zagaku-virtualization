$script = <<-EOS
  sudo apt-get update
  sudo apt-get -y install python python-pip python-virtualenv
  sudo pip install -r /vagrant/hello-flask/requirements.txt
EOS

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell",
    inline: $script
end
