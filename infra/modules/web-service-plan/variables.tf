variable "service_plan_name" {
    type = string
}

variable "location" {
    type = string
}

variable "resource_group_name" {
    type = string
}

variable "resource_group_location" {
    type = string
}

variable "os" {
    type = string
    default = "Linux"
}

variable "sku" {
    type = string
    default = "F1"
}

variable "worker_count" {
    type = number
    default = 1
}

variable max_worker_count {
    type = number
    default = 1
}
