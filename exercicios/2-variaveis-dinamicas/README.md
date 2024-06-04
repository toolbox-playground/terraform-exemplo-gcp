### Como executar os exercícios

- É muito importante conhecer os comandos básicos de terraform.
  
- Criar uma variavem de ambiente `GOOGLE_CREDENTIALS` e adicione o conteúdo do .json da sua service account conforme orientado [aqui](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference#running-terraform-outside-of-google-cloud)
  
- Sempre execute os comandos PLAN e VALIDATE antes do APPLY

Começe com:
```
terraform init
```

Execute o comando de plan, para planejar as mudanças
```
terraform plan -var-file="terraform.tfvars”
```

De forma alternativa, podemos também executar
```
terraform plan -var="app_name=g-run-thihenos" -var="container=gcr.io/autoavaliar-dev/devops/docker-node"
```

Por fim, execute o comando que irá atualizar a infra
```
terraform apply -var-file="terraform.tfvars” -auto-approve 
```