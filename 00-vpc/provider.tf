terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.88.0"
      }
    }

    backend "s3" {
      bucket = "sai-tf-state-remote2"
      key = "jenkins-terraform-expense-vpc" # yo should have unique keys within the bucket, same keys should not be used in others repo or tf floders
      region = "us-east-1"
      dynamodb_table = "sai-tf-state-locking"
    }
    
}

provider "aws" {
    region = "us-east-1"
}