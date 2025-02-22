variable "description" {
  type        = string
  default     = "AVD Workspace with private endpoint"
  description = "The description of the AVD Workspace."
}

variable "enable_telemetry" {
  type        = bool
  default     = true
  description = <<DESCRIPTION
This variable controls whether or not telemetry is enabled for the module.
For more information see https://aka.ms/avm/telemetryinfo.
If it is set to false, then no telemetry will be collected.
DESCRIPTION
}

variable "host_pool" {
  type        = string
  default     = "avdhostpool2"
  description = "The name of the AVD Host Pool to assign the application group to."
}

variable "user_group_name" {
  type        = string
  default     = "avdusersgrp"
  description = "Microsoft Entra ID User Group for AVD users"
}

variable "virtual_desktop_application_group_name" {
  type        = string
  default     = "vdag-avd-001"
  description = "The name of the AVD Application Group."
}

variable "virtual_desktop_application_group_type" {
  type        = string
  default     = "Desktop"
  description = "The type of the AVD Application Group. Valid values are 'Desktop' and 'RemoteApp'."
}

variable "virtual_desktop_workspace_friendly_name" {
  type        = string
  default     = "Workspace friendly name"
  description = "A friendly name for the Virtual Desktop Workspace. It can be null or a string between 1 and 64 characters long."
}

variable "virtual_desktop_workspace_name" {
  type        = string
  default     = "vdws-avd-001"
  description = "(Required) The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created."
  nullable    = false
}
