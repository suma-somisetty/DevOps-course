node{
    stage('clone repo'){
      git credentialsId: 'git', url: 'https://github.com/suma-somisetty/DevOps-course.git'
    }
  stage('build image') {
    dockerImage = docker build -t myimage1 .
  }
    stage('push to dockerhub'){
     withDockerRegistry([ credentialsId: "dockerhub", url: "https://hub.docker.com/repository/docker/sumasomisetty1/web-app/general" ])
        dockerImage.push()
     
    }
}
        






  
