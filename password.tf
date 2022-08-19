

resource "random_password" "password" {
  length = 16
  special = true
}

output "password" {
  description = "The password is:" 
  value = random_password.password.*.result
  sensitive = true
}