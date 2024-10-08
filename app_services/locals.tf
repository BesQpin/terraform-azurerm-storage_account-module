
locals {

  res_name_prefix = "${var.region_code}${var.env}${lower(var.project)}"

  # Default tags
  default_tags = {
    "Environment"     = var.env
    "EnvironmentType" = var.env_classification_tag
    "ProjectCode"     = lower(var.project)
  }

  current_time           = timestamp()
  tomorrow               = timeadd(local.current_time, "24h")

}
