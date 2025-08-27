FROM n8nio/n8n:latest

WORKDIR /data

# Instala o node comunitário desejado
RUN npm install n8n-nodes-soaprequest

# Usa o entrypoint original da imagem
ENTRYPOINT ["/docker-entrypoint.sh"]

# Comando padrão para iniciar n8n
CMD ["n8n"]
