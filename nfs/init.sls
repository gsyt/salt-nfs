include:
  - nfs.installed

nrpe:
  require:
    - sls: nfs.installed
