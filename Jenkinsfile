pipeline {
  agent any
    stages {
	  stage("build only") {
        steps {      
          sh 'mvn clean install'        
        }
      }
    }
}
