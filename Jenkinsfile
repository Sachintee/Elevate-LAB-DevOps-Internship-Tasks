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
                powershell "npm install"
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                powershell "npm test"
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker Image..."
                powershell "docker build -t task02-app ."
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running Docker Container..."
                powershell "docker run -d -p 3000:3000 --name task02-container task02-app"
            }
        }

    }
}
