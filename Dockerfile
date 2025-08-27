# Usa a imagem oficial como base
FROM n8nio/n8n:latest

# Troca para root para instalar pacotes globalmente
USER root

# Instala o node comunitário desejado globalmente
RUN npm install -g n8n-nodes-soaprequest

# Volta para o usuário padrão do n8n
USER node

# Mantém o entrypoint original
ENTRYPOINT ["/docker-entrypoint.sh"]

# Comando padrão para iniciar n8n
CMD ["n8n"]

