variable "sample_string" {
  default = "Hello world"
  }
## shell scripting equivalent to  sample_string= "Hello world"
# to print in a shell script we use echo, following is the syntax in shell
#echo $sample-string

variable "sample_number" {
  default = 100
}

variable "sample_boolean" {
  default = true
}
# booleans are true or false
# strings always in double quotes in terraform and no single quotes supported
## Variable types
# so far we have seen is default variable type
#we have list variable type meaning single variable can hold multiple data
variable "sample_list" {
  default = [
  100,
  "hello",
  true,
  123
  ]
}
# Datatype inside the list doesn't matter for terraform
# We have dictionary(or map), meaning single variable will have multiple values, and each value is
#going to have separate name
variable "sample_dict" {
  default = {
    number1 = 100,
    string1 = "hello",
    number2 = 123
    boolean = true
  }
}

# This is the most prefered list variable way when we declare the data