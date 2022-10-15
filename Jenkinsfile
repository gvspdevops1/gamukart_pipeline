pipeline {
  agent none
    stages {
	  stage("Checkout") {
        steps {
          sh 'https://github.com/gvspdevops1/gamukart_pipeline.git'
        }
      }
	  stage("build ") {
        steps {      
          sh 'mvn clean install'        
        }
      }
    }
}
