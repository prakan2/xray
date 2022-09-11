# team-tech-maturity-locator 
resource "artifactory_local_docker_v2_repository" "nishup-docker-dev-local" {
  key             = "nishup-docker-dev-local"
  repo_layout_ref = "simple-default"
  description     = "A local docker registry for dev containers"
  tag_retention   = 3
  max_unique_tags = 5
  xray_index      = false
}

resource "artifactory_local_docker_v2_repository" "nishup-docker-test-local" {
  key             = "nishup-docker-test-local"
  repo_layout_ref = "simple-default"
  description     = "A local docker registry for test containers"
  tag_retention   = 3
  max_unique_tags = 5
  xray_index      = false
}

resource "artifactory_local_docker_v2_repository" "nishup-docker-qa-local" {
  key             = "nishup-docker-qa-local"
  repo_layout_ref = "simple-default"
  description     = "A local docker registry for qa containers"
  tag_retention   = 3
  max_unique_tags = 5
  xray_index      = false
}

resource "artifactory_local_docker_v2_repository" "nishup-docker-prod-local" {
  key             = "nishup-docker-prod-local"
  repo_layout_ref = "simple-default"
  description     = "A local docker registry for production containers"
  tag_retention   = 3
  max_unique_tags = 5
  xray_index      = true
}

resource "artifactory_local_docker_v2_repository" "nishup-docker-rip-local" {
  key             = "nishup-docker-rip-local"
  repo_layout_ref = "simple-default"
  description     = "A local docker registry for deprecated former production containers"
  tag_retention   = 3
  max_unique_tags = 5
  xray_index      = false
}