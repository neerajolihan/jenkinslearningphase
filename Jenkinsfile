pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository using Git
                checkout([$class: 'GitSCM', 
                          branches: [[name: '*/main']], 
                          userRemoteConfigs: [[url: 'https://github.com/neerajolihan/jenkinslearningphase.git', credentialsId: 'jenkins']]])
            }
        }
        stage('Build') {
            steps {
                // Your build steps go here
                echo 'Building...'
            }
        }
    }
}
