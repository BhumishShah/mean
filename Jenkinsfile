pipeline {
        agent any
        stages {
                stage ('Development Server Deployment') {
                        steps {
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
                              }
                }
                stage ('Deployment on Docker') {
                        steps {
                                 #!/bin/sh
                                 ssh root@172.31.35.197 <<EOF
                                 cd /home/ubuntu/mean
                                 docker build --rm -f Dockerfile -t mean:v1 mean
                                 service docker stop
                                 service docker start
                                 docker run --rm -d -p 80:80 mean:v1
                                 exit
                                 EOF

                              }


                                                }

                }

       }
