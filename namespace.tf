resource "kubernetes_namespace" "wordpress" {
    metadata {
        annotations = {
            name = "wordpress-annotations"
        }

        labels = {
            mylabel = "myapp"
        }

        name = var.namespace
    }
}