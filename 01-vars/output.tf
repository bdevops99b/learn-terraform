output "sample_string" {
  value = var.sample_string
}
##In the above case we are printing just variable, If variable is combination of some strings then following is the syntax
# ${} is mandatory if we include the variable inside a string

output "sample_string1" {
  value = "value of sample_string= ${var.sample_string}"
}

# values from list
#Second value in list
output "sample_list_2" {
  value = var.sample_list[1]
}