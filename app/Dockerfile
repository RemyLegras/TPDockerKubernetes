FROM alpine:3.16

RUN apk add --no-cache python3 py3-pip && \
    pip install flask mysql-connector-python

WORKDIR /app

COPY src/ /app/

EXPOSE 4743

CMD ["python3", "app.py"]