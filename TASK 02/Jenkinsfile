pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                echo "Pulling project repository..."
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Installing dependencies..."
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'npm test'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t jenkins-demo-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running container..."
                sh 'docker run --rm jenkins-demo-app'
            }
        }
    }
}
