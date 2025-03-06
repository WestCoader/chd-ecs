output "ecr_repository_url" {
  value = aws_ecr_repository.chd-app.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.chd-ecs.name
}

output "ecs_service_name" {
  value = aws_ecs_service.chd-app.name
}