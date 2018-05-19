#!/bin/bash

sudo apt update && sudo apt install salt-minion && sudo mkdir -p /srv/salt && sudo cp -R programs/ /srv/salt/programs && sudo salt-call --local state.apply programs
