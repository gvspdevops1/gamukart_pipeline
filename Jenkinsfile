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
        bat 'echo stage 3 completed'
      }
    }
    stage("stage4 ") {
      steps {     
        bt 'echo stage 4 completed'
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
