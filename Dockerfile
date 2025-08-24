FROM python:3.8-slim-bullseye

WORKDIR /app
COPY . .

RUN apt update -y && apt install -y awscli && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
