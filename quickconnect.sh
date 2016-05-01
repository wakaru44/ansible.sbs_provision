ssh ubuntu@$(make describe | grep compute.amazon | awk '{ print $2 }')
