pipeline {
    agent any
        stages {
                stage ('Development Server Deployment') {
                        steps{
                              echo 'Mean Applicatation Deployment'
                              sh 'sh dev-pipe.sh'
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
docker build --rm -f Dockerfile -t mean:v1 mean
service docker stop
service docker start
docker run --rm -d -p 80:80 mean:v1
exit
'''

                                
                              }

                                         }

                }

       }
