variable "name" {
  type        = string
  default     = "wordpress"
  description = "my wordpress application"
}

variable "namespace" {
  type        = string
  description = "the namespace for app"
  default     = "mywordpressapp"
}

variable values {
    type = list
    default = []
    description = "values of my chart"
}
