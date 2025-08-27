FROM n8nio/n8n:latest

USER root
RUN npm install -g n8n-nodes-soaprequest
USER node

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/local/bin/n8n"]

