#!/usr/bin/env bash

vagrant up --provide=digital_ocean

vagrant ssh >> ~/.ssh/config

ansible-playbook -i ansible/production ansible/site.yml

