FROM mysql:8.0.30

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=testdb

COPY conf/init-db.sql /docker-entrypoint-initdb.d/01-init-db.sql
COPY conf/init-table.sql /docker-entrypoint-initdb.d/02-init-table.sql

EXPOSE 5655

HEALTHCHECK --interval=10s --timeout=5s --start-period=30s --retries=3 \
  CMD mysqladmin ping -h localhost -u root --password=rootpassword || exit 1
