🚀 End-to-End CI/CD DevOps Project (AWS)
📌 Project Overview

This project demonstrates a real-world, end-to-end CI/CD pipeline built entirely on the AWS Free Tier.
Any code change pushed to GitHub is automatically built and deployed to a live application using Jenkins, Docker, and Docker Compose.

The project focuses on:

Automation

Cost efficiency

Real DevOps best practices

🎯 Project Objective

Automate application deployment

Eliminate manual server updates

Practice production-style CI/CD

Keep everything 100% AWS Free Tier

🏗️ Architecture Overview
Developer (GitHub)
        |
        |  git push
        v
Jenkins (EC2)
        |
        |  CI/CD Pipeline
        v
Docker & Docker Compose
        |
        v
Live Application (Port 80)
        |
        v
Route 53 Domain

🧰 Technologies Used

Linux (Ubuntu)

AWS EC2

Git & GitHub

Ansible – Configuration management

Jenkins – CI/CD automation

Docker

Docker Compose

AWS Route 53 – DNS

Nginx – Web server (containerized)

📁 Project Structure
devops-ci-cd-project/
│
├── ansible/
│   ├── inventory
│   ├── jenkins-setup.yml
│   └── docker-setup.yml
│
├── app/
│   ├── Dockerfile
│   └── index.html
│
├── docker-compose.yml
├── Jenkinsfile
├── .gitignore
└── README.md

🔄 CI/CD Workflow

Developer pushes code to GitHub

Jenkins pipeline is triggered automatically

Jenkins builds Docker image

Docker Compose deploys the container

Application is updated without manual intervention

Website is accessible via Route 53 domain

🐳 Application & Docker
app/index.html
<h1>🚀 CI/CD Auto Deployment Confirmed</h1>

app/Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html

🧩 Docker Compose (Kubernetes Alternative)
docker-compose.yml
version: "3"
services:
  web:
    build: ./app
    ports:
      - "80:80"


✔ Replaces Kubernetes
✔ Zero cost
✔ Simple & production-ready for small workloads

⚙️ Jenkins Pipeline
Jenkinsfile
pipeline {
    agent any

    stages {
        stage('Build & Deploy using Docker Compose') {
            steps {
                sh '''
                docker-compose down || true
                docker-compose up -d --build
                '''
            }
        }
    }
}

🛠️ Ansible Automation
Jenkins Setup

Installs Java

Installs Jenkins

Starts Jenkins service

Docker Setup

Installs Docker & Docker Compose

Adds Jenkins user to Docker group

Enables Docker service

✔ Fully automated server setup
✔ Repeatable and consistent

🌍 Domain Setup with Route 53

Steps followed:

Created a Public Hosted Zone in Route 53

Updated domain nameservers (from registrar) to Route 53

Created A record pointing domain → EC2 Public IP

Website accessible via:

http://yourdomain.com

🧪 Verification & Testing
Check running containers
docker ps

Test application
curl localhost

Browser access
http://yourdomain.com

🔁 Auto-Deployment Test

Update index.html

Commit & push to GitHub

Jenkins pipeline runs automatically

Website updates instantly

✔ CI/CD confirmed

💰 Cost Optimization

Uses only one EC2 Free Tier instance

No Load Balancers

No EKS / RDS

Docker Compose instead of Kubernetes

💡 Total cost: $0

🧠 Key Learnings

CI/CD pipeline design

Jenkins + Docker integration

Linux user & permission management

Infrastructure automation using Ansible

DNS management using Route 53

Cost-aware DevOps architecture

👨‍💻 Author

Rahul Hari Kumar
DevOps Engineer | AWS | CI/CD | Docker | Jenkins
