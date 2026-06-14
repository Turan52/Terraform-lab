terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello" {
  content         = var.message
  filename        = "/home/filip/hello.txt"
  file_permission = "0644"
}

resource "local_file" "second" {
  content         = "THis is a second file created by Terraform"
  filename        = "/home/filip/secondfile.txt"
  file_permission = "0644"
}
