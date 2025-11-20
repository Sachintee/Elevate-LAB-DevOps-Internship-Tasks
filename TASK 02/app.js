const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/html" });
  res.end("🚀 Task02 CI/CD Pipeline is working successfully!");
});

server.listen(3000, () => {
  console.log("Server running at http://localhost:3000");
});
