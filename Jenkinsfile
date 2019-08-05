pipeline {
    agent any
        stages {
                stage ('Development Server Deployment') {
                        steps{
                              echo 'Mean Applicatation Deployment'
                              sh 'sh dev-pipe.sh'
                              }
                                 
                                                         }
          
          stage ('apache Server stop') {
                        steps{
                              echo 'stopping the apache service'
                              sh 'sh service apache2 stop'
                              }
                                 
                                                         } 
                
          
          stage ('Deployment on Docker') {
                        steps {
                           echo 'Mean Docker Deployment'
                              sh 'sh docker-pipe.sh'
                                
                              }

                                         }

                }

       }
