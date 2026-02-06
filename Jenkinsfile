pipeline {
    agent any

    environment {
        APP_NAME = 'cicd-lab-app'
    }

    stages {
        stage('Test') {
            steps {
                echo 'Running Unit Tests...'
                sh 'cd app && npm install && npm test'
            }
        }
        stage('Build') {
            steps {
                echo 'Building Docker Image...'
                sh "docker build -t ${APP_NAME}:${BUILD_NUMBER} ."
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to Production...'
                sh """
                docker stop ${APP_NAME} || true
                docker rm ${APP_NAME} || true
                docker run -d -p 3000:3000 --name ${APP_NAME} ${APP_NAME}:${BUILD_NUMBER}
                """
            }
        }
    }

    post {
        always {
            echo 'Cleaning up old images...'
            sh 'docker image prune -f'
        }
    }
}
