/*

resource "null_resource" "fruits" {
  count = length(var.fruits)
  provisioner "local-exec" {
    command = " echo Fruit Name - ${var.fruits[count.index]} "
  }
}
variable "fruits" {
  default = [ "mango", "banana", "orange" ]
}*/

resource "null_resource" "fruits1" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo fruit name - ${each.key} - ${each.value["count"]}"
    #command = "echo fruit name - ${each.value["name"]} - ${each.value["count"]}"
  }
}

variable "fruits1" {
  default = {
    pom={
      name="pom"
      count=10
    }
    mango={
      name="mango"
      count=200
    }
    watermelon={
      name="watermelon"
      count=500
    }
  }
}