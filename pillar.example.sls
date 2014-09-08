nfs:
  client:
    package:
      upgrade: False
    service:
      manage: True
      enable: True
    lookup:
      package: nfs-utils
      service: rpcbind
