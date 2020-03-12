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
        sh 'echo "Run Shell Script Test"'
      }
    }

  }
  environment {
    CI = 'true'
  }
}