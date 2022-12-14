pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './gradlew assemble'
                //sh './gradlew assemble'
            }
        }

        stage('Test') {
            steps {
                sh './gradlew test'
               
            }
        }

         stage('Scan') {
                    steps {
                        
                            sh './gradlew sonarqube'

                        }
                    }
                }
    }

