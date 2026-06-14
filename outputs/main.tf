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
