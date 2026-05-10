variable "tags" {
  type = map(string)

  validation {
    condition = length(var.tags["Owner"]) > 0
    error_message = "Owner tag is required !!"
  }
  validation {
    condition = length(var.tags["Name"]) > 0
    error_message = "Name tag is required !!"
  }
  validation {
    condition = length(var.tags["Env"]) > 0
    error_message = "Env tag is required !!"
  }
  validation {
    condition = length(var.tags["SupportEmail"]) > 0
    error_message = "SupportEmail tag is required !!"
  }
}