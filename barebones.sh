#!/bin/bash

# even a minimal machine will need this to run this playbooks:

    aptitude update
    aptitude -y install git python-pip ansible
    pip install virtualenv

# and then, get the repo, activate the virtual env, install dependencies, create inventory, self provision it.

    virtualenv ENV
    source ENV/bin/activate
    pip install -r requirements.python.txt

# then check out your instances, create the inventory

    make describe
    make inventory
    cat hosts.tmp

You will need to edit the hosts.tmp file to ensure is accurate to your purpose. Then just provision everything

    make provision


