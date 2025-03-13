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

    stage('deploy the code on tomcate server') {
      steps {
        sshagent(['dev']) {
        sh 'scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@52.66.244.98:/usr/share/tomcat/webapps'
}
      }
      }
      
    
    }
  }
}
