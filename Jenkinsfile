pipeline{
  agent any

   environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }
    stages{
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }

        // stage('Tag Docker Image') {
        //     steps {
        //         sh 'docker tag flask-app:latest YOUR_DOCKERHUB_USERNAME/flask-app:latest'
        //     }
        // }

        stage('push to Docker hub') {
            steps {
                sh "echo \$DOCKERHUB_CREDENTIALS_PSW | docker login -u \$DOCKERHUB_CREDENTIALS_USR --password-stdin"
                sh "docker tag flask-app:latest rekz19/flask-app:latest"
                sh "docker push rekz19/flask-app:latest"
            }
        }
    }


}
