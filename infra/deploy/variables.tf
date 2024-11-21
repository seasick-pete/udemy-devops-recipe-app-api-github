variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "raagh"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "udemy-devops-recipe-app-api-github"
}

variable "contact" {
  description = "Contact email for tagging resources"
  default     = "petelelliott@gmail.com"
}


variable "db_username" {
  description = "Username for the recipe app api database"
  default     = "recipeapp"
}

variable "db_password" {
  description = "Password for the Terraform database"
}
