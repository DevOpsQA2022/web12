pipeline {
    agent any
//     tools{
//         maven 'Maven_Home'
//     }
    stages {
        stage ('Build') {
            steps {
              echo 'successfully'
              sh ' docker build -t blog/sbdemo:latest . '            
            }          
        }
   
        stage ('Deploy') {
            steps {
                deploy adapters: [tomcat8(credentialsId: 'a113e3b9-6ba1-471a-8989-c99776136ead', path: '', url: 'http://localhost:9090/')], contextPath: null, war: '**/app.war'
            }
        }
    }
}
