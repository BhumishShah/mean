pipeline {
    agent any
        stages {
                stage ('Development Server Deployment') {
                        steps{
                              echo 'Mean Applicatation Deployment'
                              sh label: '', script: '''#!/bin/sh
ssh root@172.31.35.197 <<EOF
cd /home/ubuntu/mean
ng build --prod
cd /home/ubuntu/mean/dist/mean
cp -Rpv * /var/www/html
chmod -R 775 /var/www/html
chown -R www-data:www-data /var/www/html
exit
EOF
'''
                              }
                                 
                                                         }
          
                stage('project manager input') {
                       steps {
                             input ('Do you want to continue ?')
                             }

                                               }
          
          
          stage ('apache Server stop') {
                        steps{
                              echo 'stopping the apache service'
                              sh 'sh apache-stop.sh'
                              }
                                 
                                                         } 
                
          
          stage ('Deployment on Docker') {
                        steps {
                           echo 'Mean Docker Deployment'
                             sh label: '', script: '''#!/bin/sh
ssh root@172.31.35.197 <<EOF
cd /home/ubuntu/mean
docker build --rm -f Dockerfile -t mean:v1
service docker stop
service docker start
docker run --rm -d -p 80:80 mean:v1
exit
'''

                                
                              }

                                         }

                }

       }
