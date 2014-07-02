subnet=`cat ec2-subnet`
ami=ami-76817c1e

instance=`ec2-run-instances -s $subnet -k xke-babe $ami -t t2.micro|grep INSTANCE|cut -f 2`
echo $instance>ec2-instance-`date +%s`
