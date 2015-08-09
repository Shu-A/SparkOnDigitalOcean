#!/usr/bin/env bash

vagrant up

vagrant ssh-config > ~/.ssh/config

ansible-playbook -i ansible/production ansible/site.yml

