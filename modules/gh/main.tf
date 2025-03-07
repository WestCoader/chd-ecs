resource "github_repository" "repo" {
  name        = var.repository_name
  description = var.repository_description
  visibility     = var.repository_visibility
}

resource "github_branch_protection" "repo" {
  repository_id = github_repository.repo.node_id
  pattern     = var.branch_name

  required_pull_request_reviews {
    required_approving_review_count = var.required_approving_review_count
    dismiss_stale_reviews          = var.dismiss_stale_reviews
    require_code_owner_reviews    = var.require_code_owner_reviews
  }

  enforce_admins = var.enforce_admins
}

resource "github_actions_variable" "repo" {
  variable_name   = var.AWS_REGION
  value           = var.aws_region_value
  repository = github_repository.repo.id
  depends_on = [ github_repository.repo ]
}