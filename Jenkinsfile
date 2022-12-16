
pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                sh './gradlew assemble'

            }
        }
        stage("env variables") {
            steps {
                sh "printenv | sort"
            }

        }
        stage("usign") {
            steps {
                echo "BUILD_NUMBER = ${env.BUILD_NUMBER}"
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
                sh './gradlew publish -Pversion={env.VERSION} --console verbose'
            }
        }
    }
}

