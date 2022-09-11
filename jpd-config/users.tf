resource "artifactory_user" "nishup-developer" {
  name     = "nishupdev"
  email    = var.email_address
  password = var.developer_pw
  disable_ui_access = false
  groups   = ["${artifactory_group.nishup-docker-developers.name}"]
}