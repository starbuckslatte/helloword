pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Deliver to staging mode'
      }
    }

    stage('Unit Test') {
      environment {
        CI = 'true'
      }
      steps {
        echo 'Run Unit Test'
      }
    }

    stage('Deliver to ProductionVM') {
      steps {
        build 'Route to Production'
      }
    }

  }
  environment {
    CI = 'true'
  }
}