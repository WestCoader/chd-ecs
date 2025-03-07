resource "aws_ecs_cluster" "chd-ecs" {
  name = "${var.project_name}-cluster"

  tags = {
    Name        = "${var.project_name}-ecs-cluster"
    Environment = var.environment
  }
}

module "chd-fargate" {
  source             = "USSBA/easy-fargate-service/aws"
  family             = "chd-app"

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
  use_cloudfront     = false
  depends_on = [ aws_ecs_cluster.chd-ecs ]
}