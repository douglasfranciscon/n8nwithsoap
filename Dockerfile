# Usa a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# Troca para root temporariamente para instalar pacotes
USER root

# Instala bash e utilitários básicos (para inspeção e debugging)
RUN apk add --no-cache bash coreutils

# Instala o node comunitário globalmente
RUN npm install -g n8n-nodes-soaprequest

# Volta para o usuário padrão do n8n
USER node

# Mantém o entrypoint original da imagem
ENTRYPOINT ["/docker-entrypoint.sh"]

# Comando padrão para iniciar o n8n
# Durante inspeção, pode mudar temporariamente para: ["bash"] ou ["sleep","infinity"]
#CMD ["/usr/local/bin/n8n"]
CMD ["sleep", "infinity"]
