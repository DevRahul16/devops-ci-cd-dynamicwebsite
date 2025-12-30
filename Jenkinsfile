pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/DevRahul16/devops-ci-cd-k8s-project_1.git'
            }
        }

        stage('Build & Deploy') {
            steps {
                sh '''
                docker-compose down || true
                docker-compose up -d --build
                '''
            }
        }
    }
}

