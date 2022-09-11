resource "xray_watch" "nishup-docker-remote" {
  name        = "nishup-docker-remote"
  description = "nishup-docker-remote"
  active      = true

  watch_resource {
    type       = "repository"
    bin_mgr_id = "default"
    name       = "${artifactory_remote_docker_repository.nishup-docker-dockerhub.key}"
    repo_type  = "remote"

    filter {
      type  = "regex"
      value = ".*"
    }
  }

  assigned_policy {
    name = "${xray_security_policy.nishup-docker-curation.name}"
    type = "security"
  }

  watch_recipients = [var.email_address]
}

resource "xray_watch" "nishup-docker-prod" {
  name        = "nishup-docker-prod"
  description = "Monitor the production repo of the nishup project"
  active      = true

  watch_resource {
    type       = "repository"
    bin_mgr_id = "default"
    name       = "${artifactory_local_docker_v2_repository.nishup-docker-prod-local.key}"
    repo_type  = "local"

    filter {
      type  = "regex"
      value = ".*"
    }
  }

  assigned_policy {
    name = "${xray_security_policy.nishup-docker-prod.name}"
    type = "security"
  }

  watch_recipients = [var.email_address]
}