pipeline {
    agent any
   tools {nodejs "node"}
    stages {
        stage('git Branch') {
          steps{
           git branch :'master', url: 'git@github.com:SathvikaPenthala/node-todo-frontend.git'
          }
        }
         stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
          
    stage('Test') {
      steps {
         sh 'npm test'
      }
    }
        stage('mvn test') {
          steps{
           sh 'mvn test'
          }
        }
    }
}
Footer
