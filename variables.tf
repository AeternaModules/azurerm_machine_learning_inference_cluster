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
    cluster_purpose               = optional(string) # Default: "FastProd"
    description                   = optional(string)
    tags                          = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    ssl = optional(object({
      cert                      = optional(string) # Default: ""
      cname                     = optional(string) # Default: ""
      key                       = optional(string) # Default: ""
      leaf_domain_label         = optional(string) # Default: ""
      overwrite_existing_domain = optional(bool)
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_machine_learning_inference_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: kubernetes_cluster_id
  #   source:    [from commonids.ValidateKubernetesClusterID] !ok
  # path: kubernetes_cluster_id
  #   source:    [from commonids.ValidateKubernetesClusterID] err != nil
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cluster_purpose
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

