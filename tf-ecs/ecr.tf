
resource "aws_ecr_repository" "chd-app" {
  name = "${var.project_name}-app"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "${var.project_name}-ecr"
    Environment = var.environment
  }
}