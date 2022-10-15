pipeline {
  agent any
    stages {
	  stage("Checkout") {
        steps {
          sh 'git clone https://github.com/gvspdevops1/gamukart_pipeline.git'
        }
      }
	  stage("build ") {
        steps {      
          sh 'mvn clean install'        
        }
      }
    }
}
