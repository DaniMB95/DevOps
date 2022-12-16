
pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                sh './gradlew assemble'

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

        stage('Upload') {
            steps {
                sh "./gradlew publish -Pversion=${env.NUMBER}${env.BUILD_NUMBER}${env.SNAPSHOT} --console verbose"
            }
        }
    }
}

