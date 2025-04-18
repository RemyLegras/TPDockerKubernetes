FROM mysql:8.0.30

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=testdb

EXPOSE 5655

HEALTHCHECK --interval=10s --timeout=5s --start-period=30s --retries=3 \
  CMD mysqladmin ping -h localhost -u root --password=rootpassword || exit 1