variable "name" {
  description = "Name for the Lambda function"
  type        = string
}

variable "src_dir" {
  description = "Path to function source directory"
  type        = string
  default     = ""
}

variable "runtime" {
  description = "Runtime for the Lambda function"
  type        = string
  default     = "nodejs20.x"
}

variable "handler" {
  description = "Handler for the Lambda function"
  type        = string
  default     = "index.handler"
}

variable "memory_size" {
  description = "Memory size for Lambda"
  type        = number
  default     = 128
}

variable "timeout" {
  description = "Timeout for Lambda (seconds)"
  type        = number
  default     = 5
}

variable "environment_variables" {
  description = "Map of environment variables"
  type        = map(string)
  default     = {}
}
