# A simple makefile to make things simpler

help:
	@echo "Troposphere code to generate a personal workstation in the cloud";
	@echo "";
	@echo "provision      - provision the thing";
	@echo "inventory      - create an inventory file to be edited";
	@echo "describe       - describe the instances for me please ";
	@echo "long-describe  - full detail of the instances ";
	@echo "";


provision:
	ansible-playbook -i tmp/hosts.tmp -e creds=secretfoo personal.yml

inventory:
	bash tool_create_inventory.sh

long-describe:
	mkdir -p tmp; aws ec2 describe-instances > tmp/instances.json; python prettyprintec2.py

describe:
	mkdir -p tmp; aws ec2 describe-instances > tmp/instances.json; python prettyprintec2.py | grep "ublicDns\|stack-name" | grep -A 1 ec2


