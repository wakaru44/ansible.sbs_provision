#!/bin/bash

# even a minimal machine will need this to run this playbooks:

    aptitude update
    aptitude -y install git python-pip ansible
    pip install virtualenv

# and then, get the repo, activate the virtual env, install dependencies, create inventory, self provision it.
