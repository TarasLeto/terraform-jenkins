pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
  stages {
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
  stage ('terraform destroy') {
	wnen { anyOf
	{
	environment name: 'ACTION", value 'destroy':
	}
	}
	steps {
	script {
	def IS_APPROVED =input( message: "destroy ${ENV_NAME}!?!"
  ok:"YES", 
  parameters:[
          string (name :'IS_APPROVED', defaultValue: 'No', description:'think again ')
          ]
          )
          if (IS_APPROVED !='YES'){
          currentBuild.result."Aborted"
          error " User Cancelled"
          }  
  }
    }
