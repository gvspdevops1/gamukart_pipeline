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
    sh 'sudo docker build -t gvsiva2008/tomact-jenkins .'
      }
    }
    stage("pushtoHub") { 
        steps{
           withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
             sh "sudo docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
             sh 'sudo docker push gvsiva2008/tomact-jenkins:latest'
           }
        }
     }
  }
}
