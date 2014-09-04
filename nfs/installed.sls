include:
  - nfs.client.installed

nfs.installed:
  require:
    - sls: nfs.client.installed
