# This is the SIMPLEST Terraform config possible!
# It just creates a local file - NO CLOUD, NO VMware needed!

terraform {
  required_version = ">= 1.0"
}

resource "local_file" "hello" {
  content  = "Hello from Terraform! Created at ${timestamp()}"
  filename = "${path.module}/hello.txt"
}

output "file_location" {
  value = "File created at: ${local_file.hello.filename}"
}
