FROM alpine:3.24.1

RUN apk add --no-cache nginx-mod-stream=1.30.4-r1

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
