End-to-End CI/CD DevOps Project using AWS, Jenkins, Docker, Kubernetes, Prometheus & Grafana
📌 Project Overview

This project demonstrates a complete end-to-end DevOps CI/CD pipeline where application code changes pushed to GitHub automatically trigger a pipeline that builds, deploys, and updates the application on a Kubernetes cluster hosted on AWS.

The entire workflow is fully automated, following real-world industry practices used in production environments.

🎯 Project Objective

Automate application deployment so that any code change pushed to GitHub is automatically built, deployed, and monitored without manual intervention.

🏗️ High-Level Architecture

Flow:

Developer pushes code to GitHub

GitHub Webhook triggers Jenkins pipeline

Jenkins builds Docker image

Docker image is pushed to Docker Hub

Kubernetes pulls the new image and updates the running application

Prometheus monitors the application and cluster

Grafana visualizes metrics on dashboards

🧰 Technologies Used

Linux – Base operating system

AWS – Cloud infrastructure

Git & GitHub – Source code management

Terraform – Infrastructure as Code (IaC)

Ansible – Server configuration management

Jenkins – CI/CD automation

Docker – Containerization

Kubernetes (EKS) – Container orchestration

Prometheus – Monitoring

Grafana – Visualization & dashboards

📁 Project Structure
devops-ci-cd-k8s-project/
│
├── README.md
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── ansible/
│   ├── inventory
│   └── jenkins-setup.yml
│
├── app/
│   ├── Dockerfile
│   └── index.html
│
├── jenkins/
│   └── Jenkinsfile
│
├── k8s/
│   ├── deployment.yml
│   └── service.yml
│
└── monitoring/
    ├── prometheus.yml
    └── grafana-notes.md

🔄 CI/CD Pipeline Workflow

Code pushed to GitHub

Jenkins pipeline starts automatically

Docker image is built and pushed to Docker Hub

Kubernetes deployment is updated

Application is updated with zero downtime

Prometheus scrapes metrics

Grafana displays real-time dashboards

🐳 Application & Docker

index.html

<h1>🚀 Deployed Automatically via Jenkins CI/CD Pipeline</h1>


Dockerfile

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html

☸️ Kubernetes Deployment
apiVersion: apps/v1
kind: Deployment
metadata:
  name: web-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: web
  template:
    metadata:
      labels:
        app: web
    spec:
      containers:
      - name: web
        image: yourdockerhub/webapp:latest
        ports:
        - containerPort: 80

🧪 Monitoring

Prometheus collects metrics from Kubernetes

Grafana displays:

CPU usage

Memory usage

Pod status

Node health

✅ Key Highlights

Fully automated CI/CD pipeline

Infrastructure created using Terraform

Configuration managed using Ansible

Zero-downtime Kubernetes deployments

Production-grade monitoring with Prometheus & Grafana

📌 Conclusion

This project demonstrates how modern DevOps teams design, automate, deploy, and monitor applications using cloud-native tools. It closely replicates real-world production CI/CD workflows.

🚀 Author

Rahul Hari Kumar
DevOps | AWS | Kubernetes | CI/CD
