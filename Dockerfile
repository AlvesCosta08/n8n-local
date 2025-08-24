# Dockerfile
FROM n8nio/n8n:latest

# Define a porta padrão do n8n
EXPOSE 5678

# Define a URL base (obrigatório no Render)
ENV N8N_HOST=${RENDER_EXTERNAL_HOSTNAME}
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678
ENV N8N_EDITOR_BASE_URL=https://${RENDER_EXTERNAL_HOSTNAME}/

# Habilita o webhook para funcionar com o domínio do Render
ENV WEBHOOK_URL=https://${RENDER_EXTERNAL_HOSTNAME}/

# Pode adicionar variáveis extras, como credenciais ou DB
# Para usar PostgreSQL (recomendado), veja abaixo