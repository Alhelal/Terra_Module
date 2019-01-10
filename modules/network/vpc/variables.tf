## VPC SETUP
variable "vpc_cidr_prefix" {
  type = "map"
  default = {
    "SiteOps_Prod" = "10.10"
    "SiteOps_Dev" = "10.10"
  }
}
variable "vpc_cidr_mid" {
  type = "map"
  default = {
    "SiteOps_Prod" = "0"
    "SiteOps_Dev" = "24"
  }
}
