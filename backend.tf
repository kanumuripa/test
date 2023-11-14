terraform {
  backend "s3" {
    bucket         = "jenkins-s3-bucket-tf"
    key            = "s3-lock/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "EKS-TERRA-TABLE"
  }
}