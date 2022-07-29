variable "namespace" {
    type = string
    description = "Namespace to be used"
}

variable "name" {
    type = string
    default = "state-metrics"
}

variable "replicas" {
    type = number
    default = 1
}

locals {
  labels = {
    app = "state-metrics"
    label = "test"
    dog = "luffy"
  }
}