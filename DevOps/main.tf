resource "kubernetes_namespace" "mon_local" {
  metadata {
    name = "mon"
  }
}

module "kube-state-metrics" {
    source = "./modules/kube-state-metrics"
    namespace = kubernetes_namespace.mon_local.metadata[0].name
}