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
        isUnix()
      }
    }
    stage('Stage') {
      steps {
        writeFile(file: 'Test.txt', text: 'First Test in Morning')
        fileExists 'READ.txt'
        build(job: 'MyPipeline', quietPeriod: 2, wait: true)
      }
    }
    stage('Deploy') {
      steps {
        archiveArtifacts '*.txt'
      }
    }
  }
}