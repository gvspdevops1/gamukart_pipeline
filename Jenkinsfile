pipeline {
  agent any
  stages {
    stage("Checkout") {
      steps {
        bat 'git clone https://github.com/gvspdevops1/gamukart_pipeline.git '
      }
    }
    stage("build ") {
      steps {     
        bat 'mvn clean install'
      }
    }
    stage("stage3") {
      steps {     
        bat 'echo stage 3 completed '
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
    //stage("terraform") {
      //steps {         
	//sh 'terraform init'      
        //sh 'terraform apply -auto-approve'
      //}
    //}
    //stage("Build Image") {
      //steps {     
	//sh 'whoami'      
        //sh 'docker build -t gvsiva2008/tomact-jenkins .'
      //}
    //}
    //stage("pushtoHub") { 
        //steps{
           //withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
             //sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
             //sh 'docker push gvsiva2008/tomact-jenkins:latest'
           //}
        //}
     //}
  }
}
