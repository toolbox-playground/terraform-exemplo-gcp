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
terraform plan
```

Por fim, execute o comando que irá atualizar a infra
```
terraform apply -auto-approve
```

Agora execute o comando destroy para que toda a infra requisitada seja desturída
```
terraform apply -auto-approve
```