# team-tech-maturity-locator 
resource "artifactory_virtual_docker_repository" "nishup-dev-docker" {
  key                 = "nishup-dev-docker"
  repositories        = ["nishup-docker-dev-local","nishup-docker-dockerhub","nishup-docker-jfrog"]
  description         = "Nishu DEV container registry"
  notes               = "Created for a specific session"
  includes_pattern    = ""
  excludes_pattern    = ""
  default_deployment_repo = "nishup-docker-dev-local"
  depends_on = [
    artifactory_local_docker_v2_repository.nishup-docker-dev-local, 
    artifactory_remote_docker_repository.nishup-docker-dockerhub,
    artifactory_remote_docker_repository.nishup-docker-jfrog
  ]
}

resource "artifactory_virtual_docker_repository" "nishup-test-docker" {
  key                 = "nishup-test-docker"
  repositories        = ["nishup-docker-dev-local","nishup-docker-test-local"]
  description         = "Nishu TEST container registry"
  notes               = "Created for a specific session"
  includes_pattern    = ""
  excludes_pattern    = ""
  default_deployment_repo = "nishup-docker-test-local"
  depends_on = [
    artifactory_local_docker_v2_repository.nishup-docker-dev-local,
    artifactory_local_docker_v2_repository.nishup-docker-test-local
  ]
}

resource "artifactory_virtual_docker_repository" "nishup-qa-docker" {
  key                 = "nishup-qa-docker"
  repositories        = ["nishup-docker-test-local","nishup-docker-qa-local"]
  description         = "Nishu QA container registry"
  notes               = "Created for a specific session"
  includes_pattern    = ""
  excludes_pattern    = ""
  default_deployment_repo = "nishup-docker-qa-local"
  depends_on = [
    artifactory_local_docker_v2_repository.nishup-docker-test-local,
    artifactory_local_docker_v2_repository.nishup-docker-qa-local
  ]
}

resource "artifactory_virtual_docker_repository" "nishup-prod-docker" {
  key                 = "nishup-prod-docker"
  repositories        = ["nishup-docker-qa-local","nishup-docker-prod-local"]
  description         = "Nishu container registry for production containers"
  notes               = "Created for a specific session"
  includes_pattern    = ""
  excludes_pattern    = ""
  default_deployment_repo = "nishup-docker-prod-local"
  depends_on = [
    artifactory_local_docker_v2_repository.nishup-docker-qa-local,
    artifactory_local_docker_v2_repository.nishup-docker-prod-local
  ]
}

resource "artifactory_virtual_docker_repository" "nishup-rip-docker" {
  key                 = "nishup-rip-docker"
  repositories        = ["nishup-docker-prod-local","nishup-docker-rip-local"]
  description         = "Nishu container registry for deprecated containers"
  notes               = "Created for a specific session"
  includes_pattern    = ""
  excludes_pattern    = ""
  default_deployment_repo = "nishup-docker-rip-local"
  depends_on = [
    artifactory_local_docker_v2_repository.nishup-docker-prod-local,
    artifactory_local_docker_v2_repository.nishup-docker-rip-local
  ]
}