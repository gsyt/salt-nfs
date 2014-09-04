{% from "nfs/map.jinja" import nfs with context %}

{% set client = {
  'package': {
    'name': nfs.client.package,
    'upgrade': salt['pillar.get']('nfs:client:package:upgrade', False),
  },
  'service': {
    'name': nfs.client.service,
    'manage': salt['pillar.get']('nfs:client:service:manage', True), 
    'enable': salt['pillar.get']('nfs:client:service:enable', True), 
  },
} %}

nfs.client.purged:
  pkg.purged:
    - name: {{ server.package.name }}
