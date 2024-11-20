variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "udemy-devops-recipe-app-api-github-tfstate-760029521526"
}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table for TF state locking"
  default     = "udemy-devops-recipe-app-api-github-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "udemy-devops-recipe-app-api-github"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "petelelliott@gmail.com"
}
