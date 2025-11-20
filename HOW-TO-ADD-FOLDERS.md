# 📁 How to Add Folders to This Repository

## Overview
This guide explains how to add new task folders to the Elevate-LAB DevOps Internship Tasks repository.

## Folder Structure Pattern

Each task should follow this structure:
```
TASK XX/
├── README.md          # Task description and objectives
├── app.js (or server.js)  # Application code
├── package.json       # Node.js dependencies
├── Dockerfile         # Container configuration
└── [other files]      # Additional task-specific files
```

## Steps to Add a New Folder

### 1. Create the Folder
```bash
mkdir "TASK XX"
cd "TASK XX"
```

### 2. Initialize Node.js Project (if applicable)
```bash
npm init -y
```

### 3. Create Application Files
Create your main application file (e.g., `app.js` or `server.js`):
```javascript
const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/html" });
  res.end("🚀 Task XX is working!");
});

server.listen(3000, () => {
  console.log("Server running at http://localhost:3000");
});
```

### 4. Create Dockerfile
```dockerfile
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]
```

### 5. Create README.md
Document your task objectives, files included, and expected output.

### 6. Add and Commit to Git

```bash
# Add all files in the new folder
git add "TASK XX"

# Commit the changes
git commit -m "Add TASK XX: [Brief description]"

# Push to remote repository
git push origin main
```

## Important Notes

- ✅ Always include a README.md in each task folder
- ✅ Use consistent naming: "TASK 01", "TASK 02", "TASK 03", etc.
- ✅ Include a Dockerfile if containerization is needed
- ✅ Document dependencies in package.json
- ✅ Update the main repository README if needed
- ✅ Test your application before committing

## Git Commands Quick Reference

```bash
# Check status
git status

# Add specific folder
git add "TASK XX"

# Add all changes
git add .

# Commit changes
git commit -m "Your commit message"

# Push to remote
git push origin main

# Check what's staged
git diff --cached
```

## Example: TASK 03

See the `TASK 03` folder in this repository for a complete example of how to structure a new task folder.

## Troubleshooting

### Folder Not Showing in Git
- Ensure the folder contains at least one file
- Git doesn't track empty folders
- Add a `.gitkeep` file if you need to commit an empty folder

### Special Characters in Folder Names
- Use quotes when dealing with spaces: `"TASK 01"`
- Or use escape characters: `TASK\ 01`

### Permission Issues
- Ensure you have write permissions to the repository
- Check if you're on the correct branch

## Need Help?

- Check existing task folders (TASK 01, TASK 02) for examples
- Review Git documentation: https://git-scm.com/doc
- Contact repository maintainers for assistance
