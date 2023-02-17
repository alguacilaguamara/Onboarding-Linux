# Onboarding-Linux
Ansible playbook to onboarding on Linux computer in localhost.


## How to use

You need on your computer ansible. 

For example, in Ubuntu 22.04 you can use:

```sh
$ sudo apt install ansible
```

For Red Hat derivates (like CentOS, Fedora), you can use:

```sh
$ sudo yum install ansible
```

Then you can use install all inside this repo with:

```sh
$ ansible-playbook main.yml
```

Or using a concrete installation of ClamAV, Nvidia propietary driver on Ubuntu or Timeshift to create a full backup of your Linux SO:

```sh
$ ansible-playbook clamav-installation.yml
$ ansible-playbook nvidia-installation.yml
$ ansible-playbook timeshift-backup.yml
```