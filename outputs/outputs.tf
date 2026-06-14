output "file_location" {
  value       = local_file.hello.filename
  description = "Location of the created file"
}

output "file_content" {
  value       = local_file.hello.content
  description = "Content inside the created file"
}

output "file_permission" {
  value       = local_file.hello.file_permission
  description = "Permissions set on the file"
}
