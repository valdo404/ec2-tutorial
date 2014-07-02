read -p "Please enter the created subnet from last step: " subnet
read -p ""


ec2-start-instances -c $subnet
