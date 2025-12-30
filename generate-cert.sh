#!/bin/bash

set -e

CERT_DIR="/app/certs"

echo "📁 Creando carpeta de certificados: $CERT_DIR"
mkdir -p "$CERT_DIR"

echo "🔐 Instalando autoridad certificadora local"
mkcert -install

echo "📜 Generando certificados para documentos-sg.test, localhost, 127.0.0.1"
mkcert -key-file "$CERT_DIR/server.key" -cert-file "$CERT_DIR/server.crt" "*.test" localhost 127.0.0.1

# Copiar la CA raíz al directorio compartido para que esté disponible en el host
CA_PATH="$(mkcert -CAROOT)/rootCA.pem"
echo "📄 Copiando CA raíz desde $CA_PATH a $CERT_DIR/rootCA.pem"
cp "$CA_PATH" "$CERT_DIR/rootCA.pem"

echo "✅ Certificados y CA copiados:"
ls -l "$CERT_DIR"

