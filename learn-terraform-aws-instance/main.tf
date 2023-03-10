terraform {            #                                contains TF settings
  required_providers { #                     providers used to provision infra
    aws = {
      source  = "hashicorp/aws" #            optional hostname, namespace, & provider type; installed from TF Registry by default
      version = "~> 4.16"       #                  version contrainst; optional but recommended to ensure compatibility with configuration (if none, TF will use latest provider version by default)
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" { #                           configures the "provider" plugin; multiple providers can be specified
  region = "us-west-2"
}

resource "aws_instance" "app_server" { #        "Resource Type" "Resource Name" (Id will be "aws_instance.app_server"); define components of infra (virtual or physical)
  # ami           = "ami-830c94e3"     #        ORIGINAL image Id for Ubuntu OS
  ami           = "ami-08d70e59c07c61a3a"#      NEW AMI to test applying a resource update
  instance_type = "t2.micro"           #               instance type (AWS free tier)

  tags = {
    Name = var.instance_name #                  name for instance; can be variable or hard-coded
  }
}
