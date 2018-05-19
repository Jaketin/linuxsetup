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
      - steam
      - vlc

dropbox:
  cmd.run:
    - name: 'cd /tmp && wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb && dpkg -i dropbox.deb'
    - require:
      - pkg: wget

spotify:
  cmd.run:
    - name: 'snap install spotify'
    - require:
      - pkg: snapd

discord:
  cmd.run:  
    - name: 'cd /tmp && wget -O discord.deb https://discordapp.com/api/download?platform=linux&format=deb && dpkg -i discord.deb'
    - require:
      - pkg: wget
