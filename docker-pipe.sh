#!/bin/sh
ssh root@172.31.35.197 <<EOF
cd /home/ubuntu/mean
docker build --rm -f Dockerfile -t mean:v1 mean
service docker stop
service docker start
docker run --rm -d -p 80:80 mean:v1
exit
EOF
