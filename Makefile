# A simple makefile to make things simpler

help:
	@echo "Troposphere code to generate a personal workstation in the cloud";
	@echo "";
	@echo "provision     - provision the thing";
	@echo "inventory     - create an inventory file to be edited";
	@echo "describe      - describe the instances for me please ";
	@echo "";


describe:
	mkdir -p tmp; aws ec2 describe-instances > tmp/instances.json; python prettyprintec2.py

provision:
	ansible-playbook -i hosts.tmp -e creds=secretfoo personal.yml

