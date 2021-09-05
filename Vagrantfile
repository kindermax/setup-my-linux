$VM_BOX = 'hashicorp/bionic64'

Vagrant.configure('2') do |config|
  config.vm.box = $VM_BOX

  config.vm.provision "shell", inline: "cd /vagrant"

  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = { ansible_ssh_user: 'vagrant', vagrant: true, zsh_user: 'vagrant' }
    ansible.become = true
    ansible.playbook = 'tests/vagrant.yml'
  end
end
