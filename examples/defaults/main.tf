variable "aws_region" {
  default = "us-east-1"
}

provider "aws" {
  region = var.aws_region
}

resource "random_pet" "this" {
  length = 2
}

//variable "public_key_path" {}

module "defaults" {
  source = "../.."
  id     = random_pet.this.id
  azs    = ["us-east-1a", "us-east-1b", "us-east-1c"]
  //  public_key_paths = [var.public_key_path]
}

