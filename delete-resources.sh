ec2-terminate-instances `ec2-describe-instances |grep INSTANCE|cut -f 2`

for subnet in `ec2-describe-subnets|cut -f 2`; do ec2-delete-subnet $subnet; done
for vpc in `ec2-describe-vpcs|cut -f 2`; do ec2-delete-vpc $vpc; done

