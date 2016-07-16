docker rm $(docker ps -q -f status=exited)
docker ps -a
