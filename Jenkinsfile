pipeline{
  agent any
  stages{
    stage('clone repo'){
      git credentialsId: 'git', url: 'https://github.com/suma-somisetty/DevOps-course.git'
    }
  stage('build image') {
    dockerImage = docker.build('sumasomisetty1/nginx1:latest')
  }
    stage('push to dockerhub'){
     withDockerRegistry([ credentialsId: "dockerhubaccount", url: "https://hub.docker.com/repository/docker/sumasomisetty1/web-app/general" ])
        dockerImage.push()
     
    }
  }
}
        






  
