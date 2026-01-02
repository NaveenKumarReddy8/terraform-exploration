variable "splunk" {
  type    = number
  default = 8088
}

variable "https_port" {
  type = number
}

variable "dev_port" {
  type = number
}

variable "prod_port" {
  type = number
}

variable "cidr_block" {
  type    = string
  default = "172.31.0.0/16"
}