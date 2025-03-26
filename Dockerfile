# Usar una imagen base ligera
FROM alpine:latest

# Instalar OpenSSL
RUN apk add --no-cache openssl && mkdir /certs

COPY generate-cert.sh /generate-cert.sh

RUN chmod +x /generate-cert.sh

CMD ["/generate-cert.sh"]
