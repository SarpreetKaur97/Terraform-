provider "aws" {
region = "us-east-1"
description = "aws provider"
}
provider "aws" {
region = "us-west-1"
alias = "us-west"
description = "aws west provider"
}
