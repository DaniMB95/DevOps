def version = '1.0.1-SNAPSHOT'
pipeline {
    agent any
   // def version = '0.0.1-SNAPSHOT'
   // environment {
    // Variables de entorno
   // def version = '0.0.1-SNAPSHOT'
    //MI_VARIABLE_2 = 'bar'
  //}
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
        /*stage('variables') {
            steps {
                //version = 0.0.1-SNAPSHOT
                sh './gradlew setProperty -Pversion="0.0.1-SNAPSHOT"'
                // Establece las variables de entorno aquí
            }
        }*/
        stage('Upload') {
            steps {

                sh './gradlew publish --console verbose'

            }
        }
    }
}

