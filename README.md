ansible-bacula
==============


# Warning

This is still in development don't run it on production.

# TODO

- ansible handlers seem to be useless here since is hard to determine which
  deamon to restart at one point
- add support for certs


# How to test

- Make a lxc or virtualbox with clean Ubuntu 12.04 install with sshd.
- Bind VM port 22 to localhost 2222 (or edit testing inventory).
- Add your key to sudo user.
- Run: ansible-playbook -i testing testing-director-storage.yml -K (on the
  director/storage)
- Run: ansible-playbook -i testing testing-clients.yml -K (on the clients)
