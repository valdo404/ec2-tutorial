subnet=`cat ec2-subnet`
ami=ami-76817c1e

ec2-run-instances -s $subnet -k xke-babe $ami -t t2.micro
