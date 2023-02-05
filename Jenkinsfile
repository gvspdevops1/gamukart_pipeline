pipeline {
  agent any
  stages {
	stage("Checkout") {
      steps {
        sh 'git clone https://github.com/gvspdevops1/gamukart_pipeline.git '
      }
	}
	stage("build ") {
      steps {     
        sh 'mvn clean install'
      }
    }
    stage("Build Image") {
      steps {     
	sh 'whoami'      
    sh 'docker build -t gvsiva2008/tomact-jenkins .'
      }
    }
    stage("pushtoHub") { 
        steps{
           withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
             sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
             sh 'docker push gvsiva2008/tomact-jenkins:latest'
           }
        }
     }
  }
}
