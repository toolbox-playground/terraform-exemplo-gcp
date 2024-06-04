module "g-run-<MEU-USER>" {
  source              = "../../modulos"
  project_id          = "<MEU-PROJETO-GOOGLE>"
  app_name            = var.app_name
  location            = ["northamerica-northeast1"]
  container           = var.container
  label_environment   = "prod"
  label_responsible   = "thiago"
  label_creator       = "team-a"
  container_port      = "3000"
  container_port_name = "http1"
}