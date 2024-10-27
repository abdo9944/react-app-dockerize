pipeline {
    agent any 
    stages {
        stage('Checkout') {
            steps {
                // Check out the source code from your repository
                git 'https://github.com/your-repo/my-app.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh "docker build -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} ."
                }
            }
        }
