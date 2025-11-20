# TASK 03 — Example Task Folder Structure

## 📌 Objective
This is an example folder demonstrating how to add new tasks to the repository.

## 📁 Files Included
- `app.js` — Node.js application
- `package.json` — Node app configuration and dependencies
- `Dockerfile` — Container build file
- `README.md` — This documentation file

## 🎯 Purpose
This folder serves as a template and example for adding new task folders to the repository.

## 🚀 How to Use This Template

1. **Copy the structure**: Use this folder as a reference when creating new task folders
2. **Modify the content**: Update files to match your specific task requirements
3. **Update documentation**: Always keep the README.md updated with task objectives
4. **Test before committing**: Ensure your application works before pushing to Git

## 📝 Running the Application

### Prerequisites
- Node.js (v18 or higher)
- npm

### Installation
```bash
cd "TASK 03"
npm install
```

### Run Locally
```bash
node app.js
```

### Build Docker Image
```bash
docker build -t task03-demo .
```

### Run Docker Container
```bash
docker run -p 3000:3000 task03-demo
```

## ✅ Expected Output
When you visit `http://localhost:3000`, you should see:
```
🚀 TASK 03: Example folder structure for new tasks
```

## 📚 Additional Resources
- See [HOW-TO-ADD-FOLDERS.md](../HOW-TO-ADD-FOLDERS.md) for detailed instructions
- Check TASK 01 and TASK 02 for other examples
