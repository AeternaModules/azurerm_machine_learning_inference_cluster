output "machine_learning_inference_clusters" {
  description = "All machine_learning_inference_cluster resources"
  value       = azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters
}
output "machine_learning_inference_clusters_cluster_purpose" {
  description = "List of cluster_purpose values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.cluster_purpose]
}
output "machine_learning_inference_clusters_description" {
  description = "List of description values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.description]
}
output "machine_learning_inference_clusters_identity" {
  description = "List of identity values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.identity]
}
output "machine_learning_inference_clusters_kubernetes_cluster_id" {
  description = "List of kubernetes_cluster_id values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.kubernetes_cluster_id]
}
output "machine_learning_inference_clusters_location" {
  description = "List of location values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.location]
}
output "machine_learning_inference_clusters_machine_learning_workspace_id" {
  description = "List of machine_learning_workspace_id values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.machine_learning_workspace_id]
}
output "machine_learning_inference_clusters_name" {
  description = "List of name values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.name]
}
output "machine_learning_inference_clusters_ssl" {
  description = "List of ssl values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.ssl]
}
output "machine_learning_inference_clusters_tags" {
  description = "List of tags values across all machine_learning_inference_clusters"
  value       = [for k, v in azurerm_machine_learning_inference_cluster.machine_learning_inference_clusters : v.tags]
}

