#!/bin/bash

# Create a simple inventory holding all the machines found in a cloud formation stack called personal.
mkdir -p tmp
# The destination inventory file
INVFILE=tmp/hosts.tmp 
IDNS=$( aws ec2 describe-instances  | grep "ublicDns\|stack-name" | grep ec2 | perl -pe 's|.*Dns.*"(ec2-.*)".*|\1|')

#reset the file
echo "---" > $INVFILE
# add details
echo "[personal]" > $INVFILE
echo "ubuntu@$IDNS" >> $INVFILE