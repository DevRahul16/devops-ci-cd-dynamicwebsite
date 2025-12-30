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

