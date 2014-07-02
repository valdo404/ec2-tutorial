read -p "Please enter the created subnet from last step: " subnet


ec2-start-instances -c $subnet
