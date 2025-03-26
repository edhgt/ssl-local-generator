#!/bin/sh

# Definir los parámetros del certificado
CERT_DIR="/certs"
IP="127.0.0.1"
EXPIRATION_DAYS=365

# Crear un certificado SSL autofirmado
openssl req -x509 -nodes -days $EXPIRATION_DAYS -newkey rsa:2048 \
    -keyout $CERT_DIR/server.key -out $CERT_DIR/server.crt \
    -subj "/C=US/ST=State/L=City/O=LocalOrg/OU=IT Department/CN=$IP"

# Mostrar los certificados generados
echo "Certificado y clave generados:"
echo "Certificado: $CERT_DIR/server.crt"
echo "Clave privada: $CERT_DIR/server.key"

