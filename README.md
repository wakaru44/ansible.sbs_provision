just an attempt of following the tutorial to learn ansible, and at the same time procure a quick way of creating a work environment

This is part of a bigger effort, to have a remote work station, with some basics, fully automated.

1- something to provision a machine in AWS

2- something to run the ansible playbook as downloaded from the branch master of a repo

3- mount something like a filesystem with access to a cloud (dropbox, drive, whatever)

and give you the access details of such a thing. 

## Usage 

look at the `barebones.sh` file to get an idea. Then you can just run it.

It requires that you have an AWS cli correctly confirured. It also requires that the key you are using is the key configured. 
It doesn't configure keys automatically


## Current status

- it provisions some basic software. but I don't understand where is doing it, not in the machine.

## Improvements

- do all that using authenticated repos and not public ones?

- maybe one day include the local workstation as well?

- make sure we use the correct key to connect to the instance


## TODO / TOFIX

- the repos for the sbs stack have been renamed

- the vimrc repo has some dependencies not specified in submodules

- install chrome 
    

      This worked for me (all other methods suggested got me very lost):

      Download the package (64 bit):

      wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

      Install the package, forcing install of dependencies:

      sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb

      In case any dependencies diddnt install (you would have a warning or failure message for this), you can force them via:

      sudo apt-get install -f

