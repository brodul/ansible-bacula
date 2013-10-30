ansible-bacula
==============

## How can you help

- Test if it works
- make pull requests
- write the docs

## How to use for your environment

I would recommend you that you to reuse the roles.

see this two links:

https://groups.google.com/forum/#!msg/ansible-project/vgc2bFQgzmE/0SDKwCniPjgJ
http://www.ansibleworks.com/docs/playbooks_roles.html#id7

If you have other design patterns about reusage of ansible configuration please
contact brodul on Freenode IRC server.


## Warning

This is still in development don't run it on production.


## TODO

- add support for certs

## Design decisions

No support (yet) for:

- safe deploy (don't restart if jobs running)
- separation for director and storage

Other:
- catalog is on director



## How to test

- Make a lxc or virtualbox with clean Ubuntu 12.04 install with sshd.
- Bind VM port 22 to localhost 2222 (or edit testing inventory).
- Add your key to sudo user.
- Run: ansible-playbook -i testing testing-director-storage.yml -K (on the
  director/storage)
- Run: ansible-playbook -i testing testing-clients.yml -K (on the clients)
