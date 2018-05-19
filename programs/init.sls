programs:
  pkg.installed:
    - pkgs:
      - snapd
      - wget
      - git
      - gimp
      - chromium-browser
      - nautilus
      - shutter
      - clementine

spotify:
  cmd.run:
    - name: 'snap install spotify'
    - require:
      - pkg: snapd

discord:
  cmd.run:  
    - name: 'cd /tmp && wget -O discord.deb https://discordapp.com/api/download?platform=linux&format=deb'
    - require:
      - pkg: wget

discord_install:
  - cmd.run:
    - name: 'cd /tmp && dpkg -i discord.deb'
    - require:
      - discord
