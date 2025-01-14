output "test" {
  value = {
    "test" = var.test
  }
}

output "apitok" {
  value = {
    "apitok" = var.apitok
  }
  sensitive = true
}
