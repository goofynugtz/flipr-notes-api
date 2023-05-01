pipeline {
  agent any
  environment {
    DOCKER_REGISTRY = "goofynugtz"
    DOCKER_CREDENTIALS = credentials("dockerhub")
    IMAGE_NAME = "NotesAPI"
    IMAGE_TAG = "$BUILD_NUMBER"
  }

  stages {
    stage('Cloning repository...') {
      steps {
        git branch: 'master', url: 'https://github.com/goofynugtz/Flipr-notesAPI-task.git'
      }
    }

    stage('Building Image...') {
      steps {
        script {
          docker.build("${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}")
        }
      }
    }
    
    stage("Login"){
      steps{
        bash "echo $DOCKER_CREDENTIALS_PSW | docker login -u $DOCKER_CREDENTIALS_USR --password-stdin"
      }
    }
    
    stage("Push to DockerHub") {
      steps {
        sh "docker push ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
      }
    }
  }
}
