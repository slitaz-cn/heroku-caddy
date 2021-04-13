FROM caddy:alpine

COPY etc/Caddyfile /etc/caddy/Caddyfile
COPY public /app

