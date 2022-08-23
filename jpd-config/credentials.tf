
# Please change the domain according to what you configured on https://jfrog.com/start-free
variable "artifactory_url" {
  type = string
  default = "https://nishup.jfrog.io/"
}
# Please change the access token according to what you configured in your testplatform
variable "artifactory_access_token" {
  type = string
  default = "eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiI1QWdqaWh4Y0pyelc3bkZLTWRfUWtfZFBPdURidjhob0lxQ1B5ZWVfa3g4In0.eyJleHQiOiJ7XCJyZXZvY2FibGVcIjpcInRydWVcIn0iLCJzdWIiOiJqZmFjQDAxZzg4dnE3OHp0YjdlMHZ0OHM0ZWoxOTkyXC91c2Vyc1wvbmlzaHVwQGpmcm9nLmNvbSIsInNjcCI6ImFwcGxpZWQtcGVybWlzc2lvbnNcL2FkbWluIiwiYXVkIjoiKkAqIiwiaXNzIjoiamZmZUAwMDAiLCJleHAiOjE2OTIzNTQxNDAsImlhdCI6MTY2MDgxODE0MCwianRpIjoiZWEyYThmZWYtMGZlZC00YTYzLThhMmQtOTJkMzQ4NTA4NTIwIn0.qn_9PQUq9Bx9gAfgHSEW1tFoJZ47tkm3A4-nXFocrBqW6fLRTNucOeKu-nkV6SqvfYGfDI5_EsemQkvLZZSXilQJs_7TsQUa6xPJoWfL3IOYOa-wtDqXwor_BprLMsojUeLdqGdYCx1C33JFY4tu00xudD5XZJdZPz2i6KNXHqd2W-dZ40MXL-c19ehDV-LbW7f0njmaTP10Zgc7e-LGD1L07Hf6J4twcuVRB_4Ipyl91iV1DnCt5wOO_AU4HHWtSOGRhLGM02pQuWHZOFJmpAQ4-nU0QHmCTuNsyDH1z-FQuf0NMGVjh1Vjq6ElLg1v40Z8P9I59Pcnd1DMCoLZYQ"
}
# Please define a password for the non-admin user you will be working with JFrog CLI
variable "developer_pw" {
  type = string
  default = "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"
}
#Please define an email address 
variable "email_address" {
  type = string
  default = "nishu.prksh@gmail.com"
}
