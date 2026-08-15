@echo off
echo ===============================
echo Docker Deployment
echo ===============================

echo Building Docker image...
docker build -t my-dashboard:latest .

echo Docker image Built successfully.

echo Stopping old container if it exists...

docker stop my-site 2>nul
docker rm my-site 2>nul

docker run -d -p 8080:80 --name mysite my-dashboard:latest

echo Deployment completed

echo visit http://localhost:8080 to view the dashboard