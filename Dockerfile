FROM n8nio/n8n:latest

# Expõe a porta 5678
EXPOSE 5678

# Comando para iniciar o n8n
CMD ["npm", "run", "start"]