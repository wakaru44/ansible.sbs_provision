just an attempt of following the tutorial to learn ansible, and at the same time procure a quick way of creating a work environment

This is part of a bigger effort, to have a remote work station, with some basics, fully automated.

1- something to provision a machine in AWS

2- something to run the ansible playbook as downloaded from the branch master of a repo

3- mount something like a filesystem with access to a cloud (dropbox, drive, whatever)

and give you the access details of such a thing. 

## Usage 

- first install virtualenv and the dependencies, or just the dependencies with pip:

    virtualenv env
    source env/bin/activate
    # if you don't want to use virtualenv, only run the last step
    pip install -r requirements

- then you need to generate your inventory, and sync your repos

    make inventory
    make updaterepos


look at the `barebones.sh` file to get an idea. Then you can just run it.

It requires that you have an AWS cli correctly confirured. It also requires that the key you are using is the key configured. 
It doesn't configure keys automatically


## Current status

- it provisions some basic software, and clones all the github repos.

## Improvements

- do all that using authenticated repos and not public ones?

- fix the inventory creation so the user is specified as ansible parameter, not as "user@host", that causes failures.

- maybe one day include the local workstation as well?
   - have a local workstation bootstrap to make it easy to use for new computers too.
   - ideally, include in the readme the raw url of the script so it can curl | sudo bash 'ed.

- make sure we use the correct key to connect to the instance

- install and configure oh-my-zsh


## TODO / TOFIX

- the vimrc repo has some dependencies not specified in submodules

- install chrome 
    

      This worked for me (all other methods suggested got me very lost):

      Download the package (64 bit):

      wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

      Install the package, forcing install of dependencies:

      sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb

      In case any dependencies diddnt install (you would have a warning or failure message for this), you can force them via:

      sudo apt-get install -f

