variable "location" {
   type = string
   description = "Region"
   default = "West Europe"
}

variable "environment" {
   type = string
   description = "Environment"
   default = "demo"
}

variable "instance_size" {
   type = string
   description = "VM size"
   default = "Standard_B1s"
}
