# n8n Custom - com SOAP Request Node

Este repositório cria uma imagem customizada do n8n que já vem com o pacote **n8n-nodes-soaprequest** instalado.

## Como usar no EasyPanel

1. Crie um app no EasyPanel.
2. Vá até a aba **Git**.
3. Aponte para este repositório.
4. Implante.

O EasyPanel vai buildar a imagem usando este `Dockerfile`, instalar o `n8n-nodes-soaprequest` e iniciar o n8n.

## Como testar localmente

```bash
docker build -t n8n-custom .
docker run -it -p 5678:5678 n8n-custom
