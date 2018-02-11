# Ansible playbook for dotfiles

Playbook to prepare new workstations.

## Requirements

Ensure that target system has packages:

- *apt-transport-https*
- *dirmngr*
- *ansible* (http://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-via-apt-debian)
- *git*

This playbook has been tested only with official Debian 9 *Stretch*
installations.

## Usage

``$> ansible-playbook -K site.yml``

*sudo* password is required for some parts of playbook.

## Notes

- vim requires to run `:PluginInstall` afterwards to setup Vundle extensions
