pipeline{
    agent any

    stages {
        stage('Clone from Git') {
            steps {
                git branch: 'main', credentialsId: 'f9fee8e9-9d60-47c8-ab34-bc192a8bfb3e', url: 'https://github.com/gomathisankar-logituit/p1-nodedemo.git'
            }
        }
        
        stage('Install Dependencies'){
            steps {
                sh 'npm install'
            }
        }
         stage('Install pm2'){
            steps {
                sh 'npm install pm2 -g'
            }
        }
        
        stage('Deploy'){
            steps {
                sh 'pm2 startOrRestart pm2.config.json'
            }
        }
    }
}