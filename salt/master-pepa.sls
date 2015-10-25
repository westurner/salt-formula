include:
  - salt.master

/etc/salt/master.d/pepa.conf:
  file.managed:
    - source: salt://salt/files/master.d/pepa.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - require:
      - file: /etc/salt/master.d
    - watch_in:
      - service: salt-master

