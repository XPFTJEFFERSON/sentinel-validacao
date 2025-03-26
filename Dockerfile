# Base
FROM ubuntu:22.04

# Evita prompts interativos
ENV DEBIAN_FRONTEND=noninteractive

# Atualização e dependências
RUN apt update && apt install -y python3 python3-pip curl nano

# Cria diretório da aplicação
WORKDIR /opt/validador/scripts

# Copia os arquivos locais para o container
COPY . /opt/validador/scripts

# Permissões
# RUN chmod +x /opt/validador/scripts/*.sh

# Define o script de entrada
ENTRYPOINT ["/opt/validador/scripts/validador_entrypoint.sh"]
