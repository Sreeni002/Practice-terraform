
#Shell scripting this is equivalent to sample_string = "Hello World"
#We will use echo to print in shell scripting
#echo $sample_string

#But we will use the below syntax to print in Terraform.

output "sample_string" {
  value = var.sample_string
}

#In case if we want to print a variable in the combination of strings then we will follow the below syntax
output "sample_string1" {
  value = "Value of Sample string = ${var.sample_string}"
}

output "sample_list_fetch-values" {
  value = var.sample_list[1]
}

#Print values from dictionary

output "sample_dict_fetch-values" {
  value = var.sample_dict["rate"]
}