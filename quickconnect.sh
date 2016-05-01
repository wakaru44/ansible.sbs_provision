ssh ubuntu@$(make describe | grep compute.amazon | awk '{ print $2 }')

# another alternative, from nothing prior:
#IDNS=$( aws ec2 describe-instances  | grep "ublicDns\|stack-name" | grep ec2 | perl -pe 's|.*Dns.*"(ec2-.*)".*|\1|')
# ssh -i ~/.ssh/id_rsa ubuntu@$IDNS
