variable "instance_config" {
  type = map(any)
  default = {
    "instance1" = {
      "instance_type" = "t3.micro",
      "ami"           = "ami-0018df03456b303db"
    }
  }
}