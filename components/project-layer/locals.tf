locals {
  resource_group_names        = ["network", "logic", "management", "logging", "runtimes", "storage", "external-storage", "metadata", "shared-integration", "shared-product", "di001", "di002", "dp001", "dp002"]
  ip_kit_resource_group_names = ["network", "logic", "main"]

  flattened_resource_groups = flatten([
    for lz_key, lz in var.landing_zones : [
      for rg in lz.use_microsoft_ip_kit_structure ? local.ip_kit_resource_group_names : local.resource_group_names : "ingest${lz_key}-${rg}-${var.env}"
    ]
  ])
}
