pipeline {
    agent any
    tools {
        terraform 'Terraform-11'
    }
    stages {
        stage ("Git checkout") {
            steps {
                git branch: 'main', url: 'https://github.com/PavanPuttamraju/terraform'
            }
        }
         stage ("SA activation") {
            steps {
                sh 'gcloud auth activate-service-account --key-file firstproject-345205-6f6244f9f478.json'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        
        stage ("terraform plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
}