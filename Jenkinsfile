pipeline {
  agent any
  stages {
    stage('scm checkout') {
      steps {
        git branch: 'master', url: 'https://github.com/NehaDaveMe/Jenkins-pipeline-project.git'
      }
    }


    stage('compile the job') //validate then compile
    {
      steps {
        withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
          sh 'mvn compile'
        }
      }
    }


    stage('execute unit test framework') {
      steps {
        withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
          sh 'mvn test'
        }
      }
    }
    stage('build the code') {
      steps {
        withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
          sh 'mvn clean package'
        }
      }
    }
    stage('create docker image') {
      steps {
        sh 'docker build -t myimage:v1.0 .'
      }
    }
    stage('push docker image to dockerhub') {
      steps {
        
        withDockerRegistry(credentialsId: 'docker_token', url: 'https://index.docker.io/v1/') {
            
                sh 'docker push myimage:v1.0'
            
        }
      }
    }
  }
}
