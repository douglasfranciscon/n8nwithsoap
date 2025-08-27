# Usa a imagem oficial como base
FROM n8nio/n8n:latest

# Instala o node comunitário globalmente
USER root
RUN npm install -g n8n-nodes-soaprequest

# Volta para o usuário padrão da imagem
USER node

# Mantém o entrypoint original
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["n8n"]
