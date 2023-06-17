pipeline {
  agent any
  stages {
    stage("build ") {
      steps {     
        bat 'mvn clean install'
      }
    }
    stage("stage3") {
      steps {     
        bat 'echo stage 3 completed and move to next'
      }
    }
    stage("stage4 ") {
      steps {     
        bat 'echo stage 4 completed '
      }
    }
    stage("stage5 ") {
      steps {     
        bat 'echo stage 5 completed '
      }
    }
    stage("stage6 ") {
      steps {     
        bat 'echo stage 6 completed '
      }
    }
  }
}
