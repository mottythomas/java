pipeline
{
    agent any
    stages
    {
        stage('Git clone')
        {
            steps
            {
                git 'https://github.com/mottythomas/java.git'
            }
        }
        
        stage('maven build')
        {
            steps
            {
                sh 'mvn package'
            }
        }
       stage ('Docker Image Build')
       {
         steps
          {
          sh returnStatus: true, script: 'docker rmi 192.168.10.100:8080/staging/myjava'
          sh 'docker build -t 192.168.10.100:8080/staging/myjava .' 
       
          }
       }
      stage ('Docker Image Push to Repo')
       {
         steps
        {
           withCredentials([string(credentialsId: 'repopwd', variable: 'repopwd')]) 
            {
              sh "docker login 192.168.10.100:8080 -u admin -p ${repopwd}"
            }
         sh 'docker push 192.168.10.100:8080/staging/myjava' 
        }
       
      }
        
        
    }
}
