pipeline {
  agent any
  stages {
    stage('scm checkout') {
      steps {
        git 'https://github.com/NehaDaveMe/Jenkins-pipeline-project.git'
      }
    
    }

    stage('package the code') {
      steps {
        withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
        sh 'mvn package'}
       
      }
    
    }
  }
}
