#convert lowercase to uppercase
variable "sample" {
  default = "abcxyz"
}

output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = ["lkg","ukg"]
}

variable "sample2" {
  default = {
    xyz=100
    abc=200
  }
}

#print first value like var.sample1[0] with a function

output "sample1" {
  value = element(var.sample1,0)
}

output "sample2" {
  value = lookup(var.sample2,"a1" )
}