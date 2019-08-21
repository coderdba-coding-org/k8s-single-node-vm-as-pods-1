docker ps -a |grep -v etcd |awk '{print "docker rm -f " $1}'
