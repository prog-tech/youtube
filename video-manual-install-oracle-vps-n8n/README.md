## Descrição

Instalação do N8N + Postgres + Redis através do Docker.

## Observação

Antes de executar o comando de `docker compose up -d` para baixar as imagens e subir os containers, será necessário criar as redes utilizadas com os seguintes comandos:

```bash
docker network create n8n-network
docker network create n8n-shared-network
```
