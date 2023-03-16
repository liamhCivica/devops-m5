pipeline {
    agent any
    stages {
        stage('Clean up'){
            steps {
                sh '''
                docker stop node-app || true && docker rm node-app || true
                '''
            }
        }
        stage('Build'){
            steps {
                sh "docker build -t express-app ."
            }
        }
        stage('Deploy'){
            steps {
                sh "docker run -d -p 5500:5500 --name node-app express-app"
            }
        }
    }
}
