pipeline {
  agent any
  stages {
    stage('Run Docker') {
      steps {
        sh '''docker build --tag jenkins_learn:1.0 .
docker run --publish 8000:8080 --detach --name bb jenkins_learn:1.0'''
      }
    }

  }
}