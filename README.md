# terraform-exemplo-gcp
Repositório exemplo para uso didático. Aprendizado de Terraform com GCP

### Controle de versão
Para control de versão automático usamos a lib [commit-and-tag-version](https://github.com/absolute-version/commit-and-tag-version)

## Como configurar o seu ambiente

### Pré Requisito

Seguir passo a passo da instalação do [Terraform](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/install-cli).

Seguir passo a passo da instalação do [gcloud sdk](https://cloud.google.com/sdk/docs/install).


## O que irá encontrar no repositório?

Neste repositório, temos exemplos básicos de execução de terraform com base no cloud Google Cloud Platform.

### Estrutura do repositório

```
|__.github                          # Pasta com os arquivos de CI/CD para o GitHub Actions
|__exercicios                       # Exercícios 
|  |__1-... 
|  |  |__main.tf                    # Arquivo principal para execução do terraform
|  |__2-...                          
|__modulos                          # Módulos para execução de infra estrutura
|__CHANGELOG.md                     # Arquivo de controle de changes do repositório
|__CONTRIBUTINT.md                  # Arquivo com diretrizes de contribuição
|__package.json                     # Arquivo necessário para geração de versionamento automático
|__README.md                        # Você está lendo esse arquivo
|__.versionrc                       # Arquivo necessário para configuração de versionamento
```

### Como executar os exercícios

- É muito importante conhecer os comandos básicos de terraform. 
- Dentro de cada `main.tf`, alterar os placeholder como: `<meu-user>`
~- Criar uma variavem de ambiente `GOOGLE_APPLICATION_CREDENTIALS` e adicione o conteúdo do .json da sua service account conforme orientado [aqui](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference#running-terraform-outside-of-google-cloud)~
- Faça download da chave .json para autenticar com o Google Cloud e salve na raiz do projeto com o nome `gcp.json`
- Para autenticar no gcloud, execute os comandos:
Para Windows

```
$GOOGLE_APPLICATION_CREDENTIALS="gcp.json"
gcloud auth login --cred-file=gcp.json
gcloud auth activate-service-account --project=autoavaliar-dev --key-file=gcp.json
gcloud projects list


$jsonContent = Get-Content gcp.json | ConvertFrom-Json
$firstObject = $jsonContent[0] | ConvertTo-Json -Compress
$env:GOOGLE_CREDENTIALS = $firstObject
terraform init; terraform plan; 
```

Para Linux
```
export GOOGLE_APPLICATION_CREDENTIALS=gcp.json
gcloud auth login --cred-file=gcp.json
gcloud auth activate-service-account --project=$GCP_PROJECT_ID --key-file=gcp.json
terraform init && terraform plan && terraform apply -auto-approve -state=../terraform-grun.tfstate
```

- Sempre execute os comandos PLAN e VALIDATE antes do APPLY

```
terraform init && terraform plan && terraform apply -auto-approve -state=../terraform-grun.tfstate
```

### Pastar de exercícios

*1 - Variaveis estáticas*
Nesta pasta, você encontra uma prática de 

*1 - Variaveis estáticas*
Aqui encontraremos um cenário simples, onde todos os parametros já estarão no arquivo main.tf.
*2 - Variaveis dinâmicas*
Aqui encontraremos um cenário onde passaremos os dados através de um arquivo ou por command-line.
*3 - Depends On*
Aqui encontraremos um cenário onde a criação do recurso depende da criação de outro recurso.
*4 - Deletando Recurso*
Aqui, removeremos um projeto do arquivo main.tf.
*5 - Limpando todos recursos*
Aqui usaremos o destroy para eliminar nossa infra.

## Contribuindo

Contribuições são bem-vindas! Por favor, leia o arquivo [CONTRIBUTING.md](CONTRIBUTING.md) para mais detalhes.

## Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE.md](LICENSE.md) para mais detalhes.