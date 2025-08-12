## Descrição

Para a utilização do `ffmpeg` dentro do N8N que está instalado via Docker, é necessário seguir os seguintes passos para conseguir executar comandos docker através do container que o N8N estiver executando também.

## Passos

### Passo 1

Usar o `docker-compose.yml` desta pasta no seu host da VPS. Exemplo:

```bash
ssh user@ip-do-seu-host

mkdir ~/apps/docker-proxy
```

### Passo 2

Depois de criar o `docker-compose.yml` dentro da pasta `docker-proxy`, antes de executá-lo será necessário criar a rede externa, utilizando o seguinte comando:

```bash
docker network create n8n-shared-network
```

### Passo 3

Dentro do `docker-compose.yml` que foi configurado para os serviços do seu N8N, será necessário adicionar a rede externa para se conectar com o `dockerproxy` e também mapear uma pasta do seu host para uma pasta do `n8n`, onde ficarão salvos os arquivos dos vídeos:

```yml
    ...
    ...
    restart: unless-stopped
    ports:
      - "${N8N_PORT:-5678}:5678"
    networks:
      - n8n-network
      - n8n-shared-network
```

Adicionar o `n8n-shared-network` dentro da estrutura de `networks` do service do `n8n`.

E ao final, na parte de `networks`, adicionar as linhas abaixo:

```yml
networks:         # já existe
  n8n-network: {} # já existe
  n8n-shared-network:
    external: true
```

### Passo 4

Agora basta subir os dois serviços novamente, utilizando o comando `docker compose up -d`.


## Observações

Demais explicações sobre como utilizar, favor conferir o vídeo no YouTube sobre instalação e utilização do `ffmpeg` no N8N com o Docker.
