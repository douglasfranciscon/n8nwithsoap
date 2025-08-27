# Usa a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# Define o diretório de trabalho
WORKDIR /data

# Instala o node comunitário desejado
RUN npm install n8n-nodes-soaprequest

# Mantém o entrypoint original do n8n
CMD ["tini", "--", "/docker-entrypoint.sh", "n8n"]
