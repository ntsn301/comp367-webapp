pipeline {
  agent any
  triggers {
    pollSCM('* * * * *') // Poll every minute
  }
  stages {
    stage('Checkout') {
      steps {
        git url: 'https://github.com/yourusername/comp367-webapp.git', branch: 'main'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
  }
}