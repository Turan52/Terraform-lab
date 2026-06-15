terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "config" {
  content         = "This is a config file"
  filename        = "/home/filip/config.txt"
  file_permission = "0644"
}

resource "local_file" "script" {
  content         = "This is a script file"
  filename        = "/home/filip/script.txt"
  file_permission = "0755"
}

resource "local_file" "private" {
  content         = "This is a private file"
  filename        = "/home/filip/private.txt"
  file_permission = "0600"
}
