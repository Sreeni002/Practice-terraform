resource "null_resource" "fruit_list" {
  for_each = var.fruits
  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value}"
#    command = "echo fruit name - ${length(var.fruits)}"
  }
}

variable "fruits" {
  default = ["apple","banana","orange"]
}

resource "null_resource" "fruits_map" {
  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo fruit name - ${each.value[name]} - ${each.value.[count]}"

  }
}

variable "fruits1" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    banana = {
      name = "banana"
      count = 10
    }
    orange ={
      name = "orange"
      count = 10
    }
  }
}

#for each on list

variable "vegetables" {
  default = ["carrot","capsicum"]
}

resource "null_resource" "vegetables" {
  for_each = toset(var.vegetables)

  provisioner "local-exec" {
    command = "echo vegetable name - ${each.key}"
  }
}