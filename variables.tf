# Networking setup
variable region {
  default = "us-east-1"
}

variable "key_name" {
  type  = "map"

  default = {
     "SiteOps_Prod" = "AWS_Prd"
     "SiteOps_Dev" = "AWS_Dev"
     "" = ""
  }
}
variable "public_key_path" {
  type  = "map"

  default = {
     "SiteOps_Prod" = "/home/asiddique.site/aws/KeyPair/AWS_Prd.pub"
     "SiteOps_Dev" = "/home/asiddique.site/aws/KeyPair/AWS_Dev.pub"
     "" = ""
  }
}
variable "credential" {
  type  = "map"

  default = {
     "SiteOps_Prod" = "CB-SiteOpsProd-5102"
     "SiteOps_Dev" = "CB-SiteOpsTest-5102"
  }
}
