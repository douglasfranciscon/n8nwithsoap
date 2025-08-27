FROM n8nio/n8n:latest

# Usuário root para poder instalar globalmente
USER root
RUN npm install -g n8n-nodes-soaprequest
USER node

# Mantém o entrypoint original
ENTRYPOINT ["/docker-entrypoint.sh"]

# Comando que mantém o container no ar
# Pode ser um shell interativo ou um sleep infinito
CMD ["sh"]
# ou
# CMD ["sleep", "infinity"]

