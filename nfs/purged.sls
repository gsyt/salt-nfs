include:
  - nfs.client.purged

nfs.purged:
  require:
    - sls: nfs.client.purged
