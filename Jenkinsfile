pipeline {
    agent any
    tools{
        maven 'Maven_Home'
    }
    stages {
        stage ('Build') {
            steps {
              echo 'successfully'
                sh 'mvn clean package'    
              sh 'mvn -f web12/pom.xml'
//                  sh "mv target/*.war target/JavaWeb.war"
            }
            post{
                 success{
                     echo "Archiving the Artifacts"
                     archiveArtifacts artifacts: '**/target/*war'
                    
                 }
            }
        }
   
        stage ('Deploy') {
            steps {
                deploy adapters: [tomcat8(credentialsId: '21ea2bf6-8c27-4873-b754-a7a6b9159a0f', path: '', url: 'http://localhost:9090/')], contextPath: 'JavaWeb', onFailure: false, war: 'JavaWeb/target/*.war'
            }
        }
    }
}
