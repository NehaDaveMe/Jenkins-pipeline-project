pipeline {
  agent any
  stages {
    stage('scm checkout') {
      steps {
        git 'https://github.com/NehaDaveMe/Jenkins-pipeline-project.git'
      }
    
    }
    stage('echo msg') {
      steps {
        echo "Inside echo msg"
      }
    
    }

  }
}
