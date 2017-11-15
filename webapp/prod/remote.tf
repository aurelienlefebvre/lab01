terraform {
  backend "s3" {
    bucket = "aurelien-d2si"
    key    = "webapp/webapp-lab.tfstate"
    region = "eu-west-1"
  }
}

data "terraform_remote_state" "coreInfra" {
  backend = "s3"

  config {
    bucket = "aurelien-d2si"
    key    = "vpc/terraform.tfstate"
    region = "eu-west-1"
  }
}
