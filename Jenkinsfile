pipeline {
  agent any
  tools {
    maven 'MAVEN3' // Name matches the Maven tool configured in Jenkins
  }
  stages {
    stage('Checkout') {
      steps {
        git url: 'https://github.com/ntsn301/comp367-webapp.git', branch: 'main'
      }
    }
    stage('Build') {
      steps {
        bat 'mvn clean package' // Use "bat" for Windows, "sh" for Linux
      }
    }
  }
}