resource "argocd_project" "project" {
  metadata {
    name      = var.argocd_project_name   # np. "pjatk-dev"
    namespace = var.argocd_namespace      # np. "argocd"
  }

  spec {
    description = "Project for pjatk-dev"

    source_repos = ["*"]
    destinations {
      namespace = "*"
      server    = "*"
    }
  }
}
