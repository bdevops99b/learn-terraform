variable "sample_string" {
  default = "Hello world"
  }
## shell scripting equivalent to  sample_string= "Hello world"
# to print in a shell script we use echo, following is the syntax in shell
#echo $sample-string
output "sample_string" {
  value = var.sample_string
  }
##In the above case we are printing just variable, If variable is combination of some strings then following is the syntax
# ${} is mandatory if we include the variable inside a string

output "sample_string1" {
  value = "value of sample_string= ${sample_string}"
}