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
        stage('variables') {
            steps {
                VERSION=project.property('1.0-SNAPSHOT')

                // Establece las variables de entorno aquí
            }
}
        stage('Upload') {
            steps {

                sh './gradlew publish --console verbose'

            }
        }
    }
}

