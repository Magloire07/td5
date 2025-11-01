variable "name" {
  description = "Name for the API gateway"
  type        = string
}

variable "function_arn" {
  description = "ARN of backend Lambda function"
  type        = string
}

variable "api_gateway_routes" {
  description = "List of HTTP routes to create (stub only)"
  type        = list(string)
  default     = []
}
