provider "aws" {
    region = "ap-southeast-2"
    #account = "bppstraining"
    profile = "bppstraining"
    assume_role  {
       role_arn= "arn:aws:iam::335908344139:role/bp-saml-rw"
    }
}