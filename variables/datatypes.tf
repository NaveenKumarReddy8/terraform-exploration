variable "name" {
  default = "naveen"
}

variable "age" {
  type = number
}

output "age" {
  value = var.age
}

output "name" {
  value = var.name
}

variable "technologies" {
  type = list(string)
}

output "technologies" {
  value = var.technologies
}