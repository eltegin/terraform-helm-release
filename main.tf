resource "helm_release" "wordpress" {
  name             = var.name
  chart            = "${path.module}/myapp"
  namespace        = var.namespace
  create_namespace = true
  wait             = false
  values = var.values
}