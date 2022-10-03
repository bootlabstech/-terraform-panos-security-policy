variable "name" {
  type        = string
  description = "The security rule name Example CRQ000000071234-PROD,UAT,DEV"
}

variable "type" {
  type        = string
  description = "This can be universal (default), interzone, or intrazone"
}

variable "description" {
  type        = string
  description = "The description."
}

variable "source_zones" {
  type        = list(string)
  description = " List of source zones.The values are LAN, MPLS, WAN"
}

variable "source_addresses" {
  type        = list(string)
  description = "List of source addresses.The cloudflare Ips for reverse proxy were ever traffic was coming for this cloudflare ips only allow to NGFW"
}

variable "source_users" {
  type        = list(string)
  description = "List of source users."
}

variable "destination_zones" {
  type        = list(string)
  description = " List of destination zones."
}

variable "destination_addresses" {
  type        = list(string)
  description = "List of destination addresses. The public ip want to mention"
}

variable "applications" {
  type        = list(string)
  description = "List of applications.The value are ssl and web-browsing"
}

variable "services" {
  type        = list(string)
  description = "List of services. Examples the port 443,22"
}

variable "categories" {
  type        = list(string)
  description = "List of categories.Default is any"
}
variable "action" {
  type        = string
  description = "Action for the matched traffic. This can be allow (default), deny, drop, reset-client, reset-server, or reset-both."
}

# log_setting
variable "log_start" {
  type        = bool
  description = "Log the start of the traffic flow."
}

variable "log_end" {
  type        = bool
  description = "Log the end of the traffic flow (default: true)."
}

variable "group" {
  type        = string
  description = "The group profile name.The values are MM-security-strict-Grp and MM_security_strict_grp"
}

variable "log_setting" {
  type        = string
  description = ""
  default     = "DELHI_SET1_LOG_FORWARDING"
}