pipeline {
  agent any
    stages {
	  stage("Checkout") {
        steps {
	  parallel {
	    stage(parallel1) {
	      steps {
	        sh "echo pararrel1"
	      }
	    }
	    stage(parallel2) {
	      steps {
	        sh "echo pararrel2"
	      }
	    }
	 }
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
