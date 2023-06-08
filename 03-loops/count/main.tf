
##returns nothing
resource "null_resource" "null" {}

##returns nothing 10 times as this is loops
resource "null_resource" "loops" {
  count = 10
}

#Returns nothing 3 times as we have 3 values in fruit variable
#provisioner can create anywhere after creation of resource
resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo fruit name - ${var.fruits[count.index]}"
  }
}

variable "fruits" {
  default = ["banana","apple","orange"]
}