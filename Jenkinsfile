pipeline {
  agent any
    stages {
	  stage("Checkout") {

	  parallel (
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
	 )
      }
	  stage("build ") {
        steps {      
          sh 'mvn clean install'        
        }
      }
    }
}
