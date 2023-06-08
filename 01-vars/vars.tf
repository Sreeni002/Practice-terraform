variable "sample_string" {
  default = "Hello World"
}

#Shell scripting this is equivalent to sample_string = "Hello World"
#We will use echo to print in shell scripting
#echo $sample_string

#But we will use the below syntax to print in Terraform.


#Terraform considers as number though it is float, decimal or integer whatever it is
variable "sample_number" {
  default = 10.6
}

#terraform have boolean datatype which is either true or false and no need to be in quotes
#Terraform doesn't supports single quotes and it supports only double quotes which we use only for strings
#No need to keep it in quotes for number an boolean data types
variable "sample_boolean" {
  default = true
}

##variable types
#so far we have seen only default variable type

# we have list variable which can holds multiple values any kind of data type.
variable "sample_list" {
  default = [
    100,
    "Practice",
    true,
    123.456
  ]
}

#We have another variable called dictionary or map which is most preferred than list

variable "sample_dict" {
  default = {
    number = 100
    name = "Practice"
    IsSuccess = true
    Rate = 123.456
  }
}


