# Setup my linux

I use this repo to quickly setup my fresh linux installation.

Inspiration from https://github.com/bradwilson/ansible-dev-pc/

## Step by step

1. Install `ansible`

Last version 2.9.9

```
https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu
```

2. Run script

```shell
ansible-playbook -K machine.yml
```

Or

```shell
./install.sh
```

## Test setup

```
vagrant up
vagrant ssh
```

# Other apps

- lens
- chrome
- firefox
- spotify
- youtubemusic
- viber
- sublime
- 1password
- bloomrpc
- drawio
- obsidian
- github cli

# TODO wsl compatible

# TODO
- pyenv not available untill shell restart
