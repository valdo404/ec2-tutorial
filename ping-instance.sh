instance=$1
echo "Looking for instance $instance":
public=`ec2-describe-instances |grep INSTANCE|grep $instance|cut -f 17|head -1`
ping $public
