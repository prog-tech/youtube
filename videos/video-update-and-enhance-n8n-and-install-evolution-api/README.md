## Descrição

Instalação do N8N com execução de Editor, Webhook e Workers + Postgres + Redis + Evolution API através do Docker em uma VPS.

## Observação

1. Antes de executar o comando de `docker compose up -d` para baixar as imagens e subir os containers, será necessário criar as redes utilizadas com os seguintes comandos:

```bash
docker network create n8n-network
docker network create n8n-shared-network
```

2. Para escalar os workers, basta executar o comando:

```bash
docker compose up -d --scale n8n_workers=3
```
