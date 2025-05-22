resource "argocd_application" "apps" {
  metadata {
    name      = "applications"
    namespace = var.argocd_namespace
  }

  spec {
    project = argocd_project.project.metadata[0].name

    source {
      repo_url        = var.repo_url
      target_revision = "HEAD"
      path            = "apps"
    }

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = var.app_namespace
    }

    sync_policy {
      automated {
        prune     = true
        self_heal = true
      }
    }
  }
}
