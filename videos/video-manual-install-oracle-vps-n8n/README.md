## Descrição

Instalação do N8N + Postgres + Redis através do Docker em uma VPS.

## YouTube Video

[![Youtube Video](https://img.youtube.com/vi/QmNe0ujDU3I/0.jpg)](https://www.youtube.com/watch?v=QmNe0ujDU3I)

## Observação

Antes de executar o comando de `docker compose up -d` para baixar as imagens e subir os containers, será necessário criar as redes utilizadas com os seguintes comandos:

```bash
docker network create n8n-network
docker network create n8n-shared-network
```
