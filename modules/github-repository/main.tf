resource "github_repository" "github_repositories" {
  count = length(var.repositories)
  name  = var.repositories[count.index]

  visibility = "public"

  template {
    owner      = var.github_template_owner
    repository = "terraform-template-repository"
  }
}

resource "github_branch" "github_branches" {
  count = length(var.repositories)

  repository    = var.repositories[count.index]
  branch        = var.github_branch
  source_branch = var.github_source_branch
}