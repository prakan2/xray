# team-tech-maturity-locator 
resource "artifactory_remote_docker_repository" "nishup-docker-dockerhub" {
  key                            = "nishup-docker-dockerhub"
  external_dependencies_enabled  = true
  enable_token_authentication    = true
  url                            = "https://registry-1.docker.io"
  block_pushing_schema1          = true
  xray_index                     = true
  store_artifacts_locally        = true 
}

resource "artifactory_remote_docker_repository" "nishup-docker-jfrog" {
  key                            = "nishup-docker-jfrog"
  external_dependencies_enabled  = true
  enable_token_authentication    = true
  url                            = "https://releases-docker.jfrog.io"
  block_pushing_schema1          = true
  xray_index                     = true
  store_artifacts_locally        = true 
}

/*
resource "artifactory_remote_helm_repository" "nishup-helm-artifacthub" {
  key                            = "nishup-helm-artifacthub"
  external_dependencies_enabled  = true
  enable_token_authentication    = true
  url                            = "https://artifacthub.io"
  block_pushing_schema1          = true
  xray_index                     = false
  store_artifacts_locally        = true 
}
*/