resource "argocd_repository" "this" {
  repo = var.repo_url
  type = "git"
}

resource "argocd_application" "this" {
  metadata {
    name      = var.app_name
    namespace = var.argocd_namespace
  }

  spec {
    project = "default"
    source {
      repo_url        = var.repo_url
      target_revision = var.target_revision
      path            = var.path
    }

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = var.destination_namespace
    }

    sync_policy {
      automated {
        prune = true
        self_heal = true
      }
    }
  }
}