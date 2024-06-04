module "g-run-thihenos" {
  source              = "../../modulos"
  project_id          = "autoavaliar-dev"
  app_name            = "g-run-thihenos"
  location            = ["northamerica-northeast1"]
  container           = "gcr.io/autoavaliar-dev/devops/docker-node"
  label_environment   = "prod"
  label_responsible   = "thiago"
  label_creator       = "team-a"
  container_port      = "3000"
  container_port_name = "http1"
}
