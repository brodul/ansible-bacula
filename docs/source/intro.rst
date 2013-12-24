Intro
+++++


This is an ansible playbook that makes deploying bacula easy. It has a role
for:

  - Bacula director
  - Bacula file daemon (director client)
  - Bacula storage daemon
  - Multiple file daemons (clients)


Features
--------

  - Built-in distribution detection (can be easily extended for RHEL or
    different versions of Ubuntu)
  - When client are installed the configuration that director needs is pushed
    to the director.
  - Support for encrypted backups (you have to generate keys manually with the
    script)
  - Special multiline var for each client is possible.


Limitations
-----------


  - It's only tested for the standard small setup with the director, storage,
    and director filedaemon setup. (with multiple standard clients)
  - Can't be installed on windows and no python boxes (limitations of ansible)
  

Plans
-----

  - Add Almir web interface
  - Add AWS script for testing
  - Register this project on Galaxy
  - Support for TLS communication
  - Multiple directors and stuff

How can you help
----------------

  - Test if it works
  - Talk to me (brodul [/.at/.] brodul.org)
  - Improve documentation

How to use for your environment
-------------------------------

I would recommend you that you to reuse the roles.

see this two links:

https://groups.google.com/forum/#!msg/ansible-project/vgc2bFQgzmE/0SDKwCniPjgJ
http://www.ansibleworks.com/docs/playbooks_roles.html#id7

If you have other design patterns about reusage of ansible configuration please
contact brodul on Freenode IRC server.

UPDATE:

http://galaxy.ansibleworks.com/ is released will port this playbook there

.. WARNING::

  This is still in development.



How to test
-----------

.. NOTE::

  Will be updated soon.

- Make a lxc or virtualbox with clean Ubuntu 12.04 install with sshd.
- Bind VM port 22 to localhost 2222 (or edit testing inventory).
- Add your key to sudo user.
- Run: ansible-playbook -i testing testing-director-storage.yml -K (on the
  director/storage)
- Run: ansible-playbook -i testing testing-clients.yml -K (on the clients)

