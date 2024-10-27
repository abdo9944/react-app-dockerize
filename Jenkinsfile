pipeline {
    agent any 
    stages {
        stage('Checkout') {
            steps {
                // Check out the source code from your repository
                git 'https://github.com/abdo9944/react-app-dockerize.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh "docker build -t react-app:latest ."
                }
            }
        }
