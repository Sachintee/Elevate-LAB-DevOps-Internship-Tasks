# TASK 02 — CI/CD Pipeline using Jenkins

## 📌 Objective
Automate deployment of a Node.js app using Jenkins pipeline and Docker.

## 📁 Files Included
- `app.js` — Node.js web server
- `package.json` — Node app configuration
- `Dockerfile` — Container build file
- `Jenkinsfile` — Jenkins CI/CD pipeline configuration

## 🚀 Output
Pipeline should:
1. Checkout code from repository
2. Install Node.js dependencies
3. Build Docker image
4. Run Docker container on port 3000

## 🔧 How to Run
- Configure Jenkins with Docker support
- Create a new pipeline job pointing to this repository
- Jenkins will automatically detect and execute the Jenkinsfile
