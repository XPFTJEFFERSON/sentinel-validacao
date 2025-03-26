FROM python:3.10-slim

WORKDIR /app

COPY scripts/validador_server.py .

EXPOSE 8000

CMD ["python3", "validador_server.py"]
