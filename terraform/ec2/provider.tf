terraform {
   required_providers {
     aws = {
        source = "hashicorp/aws"
        version = "5.98.0"
     }
   }

}

#configure the Aws provider
provider "aws" {
    region = "us-east-1"
  
}

