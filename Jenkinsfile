pipeline {
   agent { label 'abdo-ec2' } 
    stages {
        
        stage('Build Docker Image') {
            steps { 
                script { 
                   withCredentials([usernamePassword(credentialsId: 'Docker_Hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')])
                    // Build the Docker image
                   
                    { sh  """
                    docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
                    docker build -t abdo97/react-app:latest .
                    docker push abdo97/react-app:latest
             """
                }
            }
        }
    }
}
}
