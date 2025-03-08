module "github_repository" {

  for_each = local.repo_list

  source                          = "../modules/gh" # or Git URL source
  repository_name                 = each.key
  repository_description          = "WC Repos"
  required_approving_review_count = 1
  dismiss_stale_reviews           = true
  require_code_owner_reviews      = true
  enforce_admins                  = false
}