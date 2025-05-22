terraform {
  source = "git::git@github.com:s20769/terraform-modules.git//app-of-apps?ref=main"
}

inputs = {
  argocd_server     = "localhost:8080"
  argocd_username   = "admin"
  argocd_password   = "dev"
  repo_url          = "https://github.com/s20769/test-deployment.git"
  repo_username     = "s20769"
  project_name      = "pjatk-dev"
  app_name          = "applications"
  app_namespace     = "argocd"
  app_path          = "apps"
  target_revision   = "main"
}
