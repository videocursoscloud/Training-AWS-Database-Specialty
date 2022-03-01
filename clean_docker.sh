#!
images=$(docker images |awk '{print $3}'|grep IMAGE -v)
for i in $images
do
  docker image rm $i -f
done

containers=$(docker ps -a |awk '{print $1}'|grep CONTAINER -v)
for i in $containers
do
  docker rm -f $i
done

