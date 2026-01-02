variable "mydict" {
  type = map(string)
  default = {
    "name" = "Luffy"
  }
}

variable "my_list" {
  type = list(string)
  default = [ "Luffy", "Naruto", "Zoro" ]
}

output "name" {
  value = lookup(var.mydict, "random", "Not Found")
}

output "anime_names" {
  value = element(var.my_list, 4)
}

# output "index_lookup" {
#     value = var.my_list[4]
# }

resource "local_file" "name" {
  for_each = toset(var.my_list)
  filename = "${each.value}.txt"
  content = "I am ${each.value}"
}