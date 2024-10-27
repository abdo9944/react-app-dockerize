pipeline {
    agent any 
    stages {
        
        stage('Build Docker Image') {
            steps { 
             withCredentials([usernamePassword(credentialsId: 'Docker_Hub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')])
                script {
                    // Build the Docker image
                   
             sh  """
                    docker login -u $USERNAME -p $PASSWORD
                    docker build -t abdo97/react-app:latest .
                    docker push abdo97/react-app:latest
                 """
                }
            }
        }
    }
}
