# Usa a imagem oficial como base
FROM n8nio/n8n:latest

# Alterna para o usuário node (padrão do n8n)
USER node

# Instala o node comunitário no diretório local
RUN npm install n8n-nodes-soaprequest

# Define a variável para carregar nodes da comunidade
ENV N8N_CUSTOM_EXTENSIONS=/home/node/node_modules

# Mantém o entrypoint original
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["n8n"]
