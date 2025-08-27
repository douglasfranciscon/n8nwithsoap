# Base enxuta do Node (Alpine)
FROM node:20-alpine

# Instala utilitários mínimos para inspeção
RUN apk add --no-cache bash coreutils

# Instala n8n globalmente + pacote SOAPRequest
RUN npm install -g n8n n8n-nodes-soaprequest

# Troca para usuário não-root
USER node

# Mantém o container rodando para inspeção
CMD ["bash"]
# Alternativa: ["sleep","infinity"] se preferir


