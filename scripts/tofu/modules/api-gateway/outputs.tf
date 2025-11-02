
output "api_endpoint" {
  description = "API endpoint for the gateway. For the stub module this will return `endpoint_override` if set, otherwise a local placeholder."
  value = var.endpoint_override != "" ? var.endpoint_override : "https://${var.name}.local"
}
