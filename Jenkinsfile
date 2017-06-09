pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        parallel(
          "Build": {
            sh 'echo "satya"'
            
          },
          "NextBuild": {
            echo 'Welcome'
            
          }
        )
      }
    }
    stage('Test') {
      steps {
        sleep 30
      }
    }
    stage('Stage') {
      steps {
        writeFile(file: 'Test.txt', text: 'First Test in Morning')
      }
    }
  }
}