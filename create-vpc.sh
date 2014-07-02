# Va créer un réseau virtuel pour l'execution des vms
vpc=`ec2-create-vpc 10.0.0.0/16|cut -f 2`
sg=`ec2-describe-group |grep $vpc|cut -f 2`

subnet=`ec2-create-subnet -c $vpc -i 10.0.1.0/24|cut -f 2`
ec2-authorize $sg -P all

echo $sg>ec2-sg
echo $vpc>ec2-vpc
echo $subnet>ec2-subnet

ec2-describe-vpcs
ec2-describe-subnets
