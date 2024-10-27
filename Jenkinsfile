pipeline {
    agent any 
    stages {
        
        stage('Build Docker Image') {
            steps { 
                script {
                    // Build the Docker image
                   
             sh  """
                    docker login -u abdo97 -p 135792468
                    docker build -t abdo97/react-app:latest .
                    docker push abdo97/react-app:latest
                 """
                }
            }
        }
    }
}
