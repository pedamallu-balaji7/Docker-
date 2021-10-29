pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "docker build . -t  cd /var/lib/jenkins/workspace/Build-Tomcat-Docker-Image/target/dependency/:${env.BUILD_ID}"
            }
        }

    }
}