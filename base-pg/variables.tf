variable "external_port" {
  type        = number
  description = "External port to expose"
  default     = 5432
}

variable "container_name" {
  type        = string
  description = "Container name"
  default     = "tf-gen-postgres"
}