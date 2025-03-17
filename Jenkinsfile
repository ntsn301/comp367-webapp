pipeline {
    agent any

    tools {
        maven 'MAVEN3'  
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ntsn301/comp367-webapp.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Login') {
            steps {
                sh 'echo $DOCKER_HUB_CREDENTIALS_PSW | docker login -u $DOCKER_HUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t ntsn26/comp367-webapp .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push ntsn26/comp367-webapp'
            }
        }
    }
}
