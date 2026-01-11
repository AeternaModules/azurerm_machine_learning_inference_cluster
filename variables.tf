variable "machine_learning_inference_clusters" {
  description = <<EOT
Map of machine_learning_inference_clusters, attributes below
Required:
    - kubernetes_cluster_id
    - location
    - machine_learning_workspace_id
    - name
Optional:
    - cluster_purpose
    - description
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - ssl (block):
        - cert (optional)
        - cname (optional)
        - key (optional)
        - leaf_domain_label (optional)
        - overwrite_existing_domain (optional)
EOT

  type = map(object({
    kubernetes_cluster_id         = string
    location                      = string
    machine_learning_workspace_id = string
    name                          = string
    cluster_purpose               = optional(string, "FastProd")
    description                   = optional(string)
    tags                          = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    ssl = optional(object({
      cert                      = optional(string, "")
      cname                     = optional(string, "")
      key                       = optional(string, "")
      leaf_domain_label         = optional(string, "")
      overwrite_existing_domain = optional(bool)
    }))
  }))
}

