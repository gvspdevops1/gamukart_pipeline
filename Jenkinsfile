pipeline {
  agent any
    stages {
	    
      stage ("checkout") {
	steps {
	  bat 'git clone https://github.com/gvspdevops1/gamukart_pipeline.git'
        }  
      }
	    
      stage("build only") {
        steps {      
          bat 'mvn clean install'        
        }
      }
	    
    }
}
