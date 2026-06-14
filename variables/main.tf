terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "hello" {
  content         = var.message
  filename        = "/home/${var.username}/hello.txt"
  file_permission = "0644"
}

resource "local_file" "second" {
  content         = "This is a second file created by Terraform"
  filename        = "/home/${var.username}/second.txt"
  file_permission = "0644"
}
