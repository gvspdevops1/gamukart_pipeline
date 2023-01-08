pipeline {
  agent any
    stages {
      stage("Checkout") {
	parallel {
	  stage("parallel1") {
	    steps {
	      bat "echo pararrel1"
	    }
	  }
	  stage("parallel2") {
	    steps {
	      bat "echo pararrel2"
	    }
	  }
        }
      }	      
      stage("build ") {
        steps {      
          bat 'mvn clean install'        
        }
      }
    }
}
