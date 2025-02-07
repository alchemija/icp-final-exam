output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "kubeconfig_command" {
  value = "kubectl config current-context"
}

output "atlantis_url" {
  value = "http://${data.kubernetes_service.atlantis.status[0].load_balancer[0].ingress[0].hostname}:4141"
}

output "atlantis_webhook_url" {
  value = "http://${data.kubernetes_service.atlantis.status[0].load_balancer[0].ingress[0].hostname}:4141/events"
}