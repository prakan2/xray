resource "artifactory_group" "nishup-docker-developers" {
  name             = "nishup-docker-developers"
  description      = "nishup docker developers"
  admin_privileges = false
  policy_manager   = true
  watch_manager    = true
  reports_manager  = true
}