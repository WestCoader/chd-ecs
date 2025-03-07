# module "chd" {
#   source             = "USSBA/easy-fargate-service/aws"
#   # version            = "~> 4.0"
#   family             = "my-ez-fargate-service"
#   container_image    = "nginx:latest"
# }

resource "aws_ecs_cluster" "chd-ecs" {
  name = "${var.project_name}-cluster"

  tags = {
    Name        = "${var.project_name}-ecs-cluster"
    Environment = var.environment
  }
}

module "chd-fargate" {
  source             = "USSBA/easy-fargate-service/aws"
  # version            = "~> 4.0"
  family             = "chd-app"
  # container_image    = "${aws_ecr_repository.chd-app.repository_url}:latest"

  container_definitions = [
    {
      "name": "nginx",
      "image": "${aws_ecr_repository.chd-app.repository_url}:latest",
      "memory": 128,
      "portMappings": [
        {
          "containerPort": 80,
          "protocol": "tcp"
        }
      ]    
    }
    ]

  cluster_name       = "chd-cluster"
  desired_capacity   = 2
  max_capacity       = 4
  min_capacity       = 2
  scaling_metric     = "cpu"
  scaling_threshold  = 75
  vpc_id             = "vpc-02b3ad8f2b237c9ea"
  # private_subnet_ids = ["subnet-080c24f03b5ff312b", "subnet-0d8a3196efe2335f0", "subnet-0d74249c2263e7c60"]
  # public_subnet_ids  = ["subnet-080c24f03b5ff312b", "subnet-0d8a3196efe2335f0", "subnet-0d74249c2263e7c60"]
  # certificate_arn    = "arn:aws:acm:us-east-1:123456789012:certificate/12345678-90ab-cdef-1234-567890abcdef"
  # hosted_zone_id     = "x"
  # service_fqdn       = "chd.westcoader.com"
  use_cloudfront     = false
#   cloudfront_header = {
#     key   = "x-header-name"
#     value = "12345678-90ab-cdef-1234-567890abcdef"
#   }
#   container_environment = [
#     {
#       name  = "FOO"
#       value = "bar"
#     }
#   ]
#   container_secrets = [
#     {
#       name      = "FOO_SECRET"
#       valueFrom = "arn:aws:ssm:${local.region}:${local.account_id}:parameter/foo_secret"
#     }
#   ]
  depends_on = [ aws_ecs_cluster.chd-ecs ]
}