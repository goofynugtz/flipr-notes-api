pipeline {
  agent any
  environment {
    DOCKER_REGISTRY = "goofynugtz"
    DOCKER_CREDENTIALS = credentials("dockerhub")
    IMAGE_NAME = "NotesAPI"
    IMAGE_TAG = "$BUILD_NUMBER"
  }

  stages {
    stage('SCM Checkout') {
      steps {
        git branch: 'master', url: 'https://github.com/goofynugtz/Flipr-notesAPI-task.git'
      }
    }

    stage('Building Docker image...') {
      steps {
        script {
          sh "docker build -t ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
        }
      }
    }

    stage('Login to Docker Hub') {      	
      steps{                       	
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'                		
        echo 'Login Completed'      
      }
    }

    stage('Uploading Image') {
      steps {
        script {
          sh "docker push ${DOCKER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
        }
      }
    }
  }

  post{
    always {  
      sh 'docker logout'           
    }      
  } 
}
