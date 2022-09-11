terraform {
  required_providers {
    artifactory = {
      source = "jfrog/artifactory"
      version = "7.41.13"
    }
    xray = {
      source = "jfrog/xray"
      version = "3.55.2"
    }
  }
}

provider "artifactory" {
  # Configuration options
  url           = "${var.artifactory_url}/artifactory"
  access_token  = "${var.artifactory_access_token}"
}

provider "xray" {
  # Configuration options
  url           = "${var.artifactory_url}/xray"
  access_token  = "${var.artifactory_access_token}"
}