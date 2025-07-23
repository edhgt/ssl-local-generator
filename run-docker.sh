#!/bin/bash

echo "Ejecutando contenedor para generar certificados mkcert"
mkdir -p certs
docker build -t mkcert-local .
docker run --rm -v $(pwd)/certs:/app/certs mkcert-local


# sudo cp certs/rootCA.pem /usr/local/share/ca-certificates/mkcert-rootCA.crt && \

# sudo update-ca-certificates

# openssl x509 -in certs/rootCA.pem -out certs/mkcert-rootCA.crt
