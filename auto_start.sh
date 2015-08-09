#!/usr/bin/env bash

vagrant up --provide=digital_ocean

vagrant ssh-config > ~/.ssh/config

ansible-playbook -i ansible/production ansible/site.yml -m setup --tree /tmp/facts
#ansible-playbook -i ansible/production ansible/site.yml

