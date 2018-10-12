# dotfiles

Ansible role for provisioning new workstations.

## Compiling and using documentation

```
$> pip3 install -r requirements.txt
$> make man
$> man ./docs/man/dotfiles.1
```

## Usage

You can apply this role with default values directly on your system by running:

```
$> cd tests
$> ansible-playbook -K site.yml
```
