pipeline {
  agent any
  triggers {
    pollSCM('H/5 * * * *') // Poll every 5 mins
  }
  stages {
    stage('Checkout') {
      steps {
        git url: 'https://github.com/ntsn301/comp367-webapp.git', branch: 'main'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
  }
}