pipeline {
  agent any
    stages {
	    
      stage ("checkout") {
	steps {
	  sh 'git clone https://github.com/gvspdevops1/gamukart_pipeline.git'
        }  
      }
	    
      stage("build only") {
        steps {      
          sh 'mvn clean install'        
        }
      }
	    
    }
}
