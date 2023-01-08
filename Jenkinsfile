pipeline {
  agent { label 'node1' }
    stages {
 
      stage("build only") {
        steps {      
          bat 'mvn clean install'        
        }
      }
      stage("stage1") {
	  steps {
	    bat 'echo stage1'
	  }
	}
	stage("stage2") {
	  steps {
            bat 'echo stage 2' 
	  }
	} 
	    
    }
}
