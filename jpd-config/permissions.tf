resource "artifactory_permission_target" "nishup-docker-development" {
  name = "nishup-docker-development"

  repo {
    repositories    = ["nishup-docker-dev-local","nishup-docker-test-local","nishup-docker-qa-local","nishup-docker-prod-local","nishup-docker-rip-local","nishup-docker-dockerhub","nishup-docker-jfrog"]
    
    actions {
      groups {
        name        = "${artifactory_group.nishup-docker-developers.name}"
        permissions = ["read","write","annotate","delete","manage","managedXrayMeta"]
      }
    }
  }

  build {
    includes_pattern = ["nishup*/**"]
    repositories     = ["artifactory-build-info"]

    actions {
      groups {
        name        = "${artifactory_group.nishup-docker-developers.name}"
        permissions = ["read","write","annotate","delete","manage","managedXrayMeta"]
      }
    }
  }
}

