pipeline {
    agent any 
    stages {
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh "docker build -t react-app:latest ."
                }
            }
        }
    }
}
