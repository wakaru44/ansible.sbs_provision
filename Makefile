# A simple makefile to make things simpler

help:
	@echo "Troposphere code to generate a personal workstation in the cloud";
	@echo "";
	@echo "provision      - provision the thing";
	@echo "inventory      - create an inventory file to be edited";
	@echo "describe       - describe the instances for me please ";
	@echo "long-describe  - full detail of the instances ";
	@echo "bump           - Bump the version file";
	@echo "";


provision:
	ansible-playbook -i .ansible/hosts.tmp -e creds=secretfoo personal.yml -vv

inventory:
	bash tool_create_inventory.sh

long-describe:
	 aws  ec2 describe-instances  --query 'Reservations[*].Instances[*].[InstanceId,Tags,PublicDnsName,KeyName]'

describe:
	aws  ec2 describe-instances  --query 'Reservations[*].Instances[*].[InstanceId,Tags,PublicDnsName,KeyName]'  --output text | grep -B 1 stack-name

bump:
	python -c "fh=open('version.md');c=fh.readline();n=map(lambda x: int(x),c.split('.'));print '.'.join(map(str, [n[0],n[1],n[2]+1]))"
