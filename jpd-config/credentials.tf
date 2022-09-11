
# Please change the domain according to what you configured on https://jfrog.com/start-free
variable "artifactory_url" {
  type = string
  default = "http://ec2-18-218-116-112.us-east-2.compute.amazonaws.com:8082/"
}
# Please change the access token according to what you configured in your testplatform
variable "artifactory_access_token" {
  type = string
  default = "eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJoLXM4Nno2VHpKZlB5cHlKWHc5WFM5SGx5QV83Ql93dEFWeTJrQUhIXzhRIn0.eyJleHQiOiJ7XCJyZXZvY2FibGVcIjpcInRydWVcIn0iLCJzdWIiOiJqZmFjQDAxZ2NiY2cwbTZ0bjZjMGp5amFqNmIwYm1zXC91c2Vyc1wvYWRtaW4iLCJzY3AiOiJhcHBsaWVkLXBlcm1pc3Npb25zXC9hZG1pbiIsImF1ZCI6IipAKiIsImlzcyI6ImpmZmVAMDAwIiwiZXhwIjoxNjk0MzYxOTI3LCJpYXQiOjE2NjI4MjU5MjcsImp0aSI6ImQyMDUyZWZiLTMzYWItNDNkYS04NzFlLWQwYWNmYjUxYWI3NiJ9.FcD1Hp09KR1dwlufJ1olD7Krnf5jUPiZlBirRTi1-Wu2Sq4H_q5_Eqbmz68QJ4emUTFDDp9VeDKm_qQEX9uGvfNESVXWljnWy_0JHvq9jcscuXNULXESLRlLVyNPtflS86xaqyAuHJpKleW3J6jk0letl2bR7By-tUoy1LBckwYn7H5MGY-e47jaiC0FUv4TFzRY60R8lDYiuiSOomgVQBcjmVCxaUh0bcqk5kEzGUkQg6SgmcRKlO0VRCkse9MYpitqDpJ-lhCS6OpWuwyU0XsVXVSBvTDDHy_JB13XsDp8kxAHkkyBEnMRbmMw6OIaOivZEIceyu0zPmLVpe2SMw"
}
# Please define a password for the non-admin user you will be working with JFrog CLI
variable "developer_pw" {
  type = string
  default = "Password@123"
}
#Please define an email address 
variable "email_address" {
  type = string
  default = "nishup@jfrog.com"
}
