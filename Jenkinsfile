pipeline {
    agent any
        stages {
                stage ('Development Server Deployment') {
                        steps{
                              echo 'Mean Applicatation Deployment'
                              sh 'sh dev-pipe.sh'
                              }
                                 
                                                         }
                
          
          stage ('Deployment on Docker') {
                        steps {
                           echo 'Mean Docker Deployment'
                              sh 'sh dev-docker.sh'
                                
                              }

                                         }

                }

       }
