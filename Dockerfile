# Dockerfile for Leumi Python application
FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt
COPY . .
EXPOSE 443
CMD ["python", "app.py"]
