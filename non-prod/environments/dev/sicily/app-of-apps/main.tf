provider "argocd" {
  server_addr = var.argocd_server_addr
  username    = var.argocd_username
  password    = var.argocd_password
  # albo użyj auth_token jeśli wolisz; można też przekazywać jako ENV zmienne środowiskowe
}