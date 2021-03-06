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

nfs.client.installed:
  pkg.{{ 'latest' if client.package.upgrade else 'installed' }}:
    - name: {{ client.package.name }}
{% if client.service.manage %}
  service.{{ 'running' if client.service.enable else 'dead' }}:
    - name: {{ client.service.name }}
    - require:
      - pkg: nfs.client.installed
    - watch:
      - pkg: nfs.client.installed
{% endif %}
