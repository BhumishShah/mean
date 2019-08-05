#!/bin/sh
ssh root@172.31.35.197 <<EOF
cd /home/ubuntu/mean
ng build --prod
cd /home/ubuntu/mean/dist/mean
cp -Rpv * /var/www/html
chmod -R 775 /var/www/html
chown -R www-data:www-data /var/www/html
exit
EOF
