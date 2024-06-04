module "g-run-<MEU-USER>" {
  source              = "../../modulos"
  project_id          = "<MEU-PROJETO-GOOGLE>"
  app_name            = "g-run-<MEU-USER>"
  location            = ["northamerica-northeast1"]
  container           = "<MEU-CONTAINER>"
  label_environment   = "prod"
  label_responsible   = "thiago"
  label_creator       = "team-a"
  container_port      = "3000"
  container_port_name = "http1"
}
