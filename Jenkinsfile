pipeline{
  agent any
  tools{
    maven 'maven-3.9.4'
  }
  stages{
    stage("build maven"){
     checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/suma-somisetty/DevOps-course.git']])
        sh 'mvn clean install'
    }
  }

}
    
