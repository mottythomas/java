pipeline{
    agent any
    stages{
        stage('Git clone'){
            steps{
                git 'https://github.com/mottythomas/java.git'
            }
        }
        
        stage('maven build'){
            steps{
                sh 'mvn package'
            }
        }
        
        
    }
}
