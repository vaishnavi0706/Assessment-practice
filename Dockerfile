# ---- Builder ----
FROM python:3.9-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt
COPY . .

# ---- Runtime ----
FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /install /usr/local
COPY --from=builder /app /app

RUN useradd -m appuser
USER appuser

EXPOSE 5000
ENV FLASK_APP=app.py FLASK_RUN_HOST=0.0.0.0
CMD ["flask", "run"]
