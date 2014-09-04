salt-nfs
==========

Salt formula to set up and configure [nfs](http://nfs.sourceforge.net/)

Parameters
------------
Please refer to example.pillar.sls for a list of available pillar configuration options

Usage
-----
- Apply state 'nfs.client.installed' to install nfs client to target minions
- Apply state 'nfs.client.purged' to remove nfs server packages and configuration from target minions
State 'nfs.installed' is provided as an alias for nfs.client.installed
State 'nfs.purged' is provided as an alias for nfs.client.purged
State 'nfs' is provided as an alias for nfs.installed

To Do
-----
- Add nfs.server.installed and nfs.server.purged states

Compatibility
-------------
Ubuntu 13.10, 14.04 and CentOS 6.x
