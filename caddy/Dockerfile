FROM caddy:builder-alpine AS builder

RUN go env -w GOPROXY=https://goproxy.cn,direct

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/mholt/caddy-webdav

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
