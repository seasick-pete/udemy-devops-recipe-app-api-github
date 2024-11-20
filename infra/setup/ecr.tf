##############################################
# Create ECR repos for storing Docker images #
##############################################

resource "aws_ecr_repository" "app" {
  name                 = "udemy-devops-recipe-app-api-github-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: Update to true for real deployments.
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "udemy-devops-recipe-app-api-github-proxy"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: Update to true for real deployments.
    scan_on_push = false
  }
}
