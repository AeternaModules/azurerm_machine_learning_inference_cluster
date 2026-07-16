output "machine_learning_inference_clusters_id" {
  description = "Map of id values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "machine_learning_inference_clusters_cluster_purpose" {
  description = "Map of cluster_purpose values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.cluster_purpose if v.cluster_purpose != null && length(v.cluster_purpose) > 0 }
}
output "machine_learning_inference_clusters_description" {
  description = "Map of description values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "machine_learning_inference_clusters_identity" {
  description = "Map of identity values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "machine_learning_inference_clusters_kubernetes_cluster_id" {
  description = "Map of kubernetes_cluster_id values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.kubernetes_cluster_id if v.kubernetes_cluster_id != null && length(v.kubernetes_cluster_id) > 0 }
}
output "machine_learning_inference_clusters_location" {
  description = "Map of location values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "machine_learning_inference_clusters_machine_learning_workspace_id" {
  description = "Map of machine_learning_workspace_id values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.machine_learning_workspace_id if v.machine_learning_workspace_id != null && length(v.machine_learning_workspace_id) > 0 }
}
output "machine_learning_inference_clusters_name" {
  description = "Map of name values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "machine_learning_inference_clusters_ssl" {
  description = "Map of ssl values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.ssl if v.ssl != null && length(v.ssl) > 0 }
}
output "machine_learning_inference_clusters_tags" {
  description = "Map of tags values across all machine_learning_inference_clusters, keyed the same as var.machine_learning_inference_clusters"
  value       = { for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

