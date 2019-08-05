#!/bin/sh
ssh root@172.31.35.197 <<EOF
service apache2 stop
exit
EOF
