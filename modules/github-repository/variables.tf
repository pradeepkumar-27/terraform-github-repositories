variable "repositories" {
  description = "github repositories configuration"
  type        = list(string)
}

variable "github_template_owner" {
  description = "template repository owner"
  type        = string
}

variable "github_branch" {
  description = "github branch name"
  type        = string
}

variable "github_source_branch" {
  description = "github source branch name"
  type        = string
}