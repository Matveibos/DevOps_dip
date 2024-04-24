pipeline {
    agent any
    agent any
    tools {
        terraform 'Terraform_Default'
    }
    stages {
        stage('Initialization') {
            steps {
                script {
                    terraformHome = tool('Terraform')
                    env.PATH = "${terraformHome}/bin:${env.PATH}"
                }
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}