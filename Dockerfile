FROM caddy:alpine

ENV USER user
ENV PASSWORD p

COPY etc/Caddyfile /etc/caddy/Caddyfile
COPY public /app
RUN echo -e "basicauth / {\n  $USER `caddy hash-password -plaintext $PASSWORD`\n}" >> /etc/caddy/Caddyfile
