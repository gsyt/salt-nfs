include:
  - nfs.installed

nfs:
  require:
    - sls: nfs.installed
