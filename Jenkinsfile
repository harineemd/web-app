pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/harineemd/web-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t web-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:80 web-app'
            }
        }
    }
}
