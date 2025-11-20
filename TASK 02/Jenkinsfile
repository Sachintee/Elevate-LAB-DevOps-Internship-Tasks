pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Installing dependencies..."
                powershell 'npm install'
            }
        }

        stage('Test') {
            steps {
                echo "Skipping tests — No tests defined"
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker Image..."
                powershell 'docker build -t devops-task02 .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Starting Docker Container..."
                powershell 'docker run -d -p 3000:3000 devops-task02'
            }
        }
    }
}
