terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
backend "s3" {
  bucket ="tf-aws-minikube-remote-state"
  key="tf-aws-minikube-key"
  region="us-east-1"
  dynamodb_table="tf-aws-minikube-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}