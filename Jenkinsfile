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
      parallel {
        stage('Deliver to ProductionVM') {
          steps {
            build 'Route to Production'
          }
        }

        stage('Deliver to Test VM') {
          steps {
            build 'Route to Test VM'
          }
        }

      }
    }

  }
  environment {
    CI = 'true'
  }
}