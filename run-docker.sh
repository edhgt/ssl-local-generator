docker run -it --rm --name certbot \
  -v "~/:/etc/letsencrypt" \
  -v "~/:/var/log/letsencrypt" \
  certbot/certbot certonly \
  --standalone \
  --preferred-challenges http \
  --email user@domain \
  --agree-tos \
  --no-eff-email \
  -d 127.0.0.1 
