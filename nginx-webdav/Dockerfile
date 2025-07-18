FROM base-nginx-webdav:latest

VOLUME /data
EXPOSE 80
COPY webdav.conf /etc/nginx/nginx.conf

COPY entrypoint.sh /
RUN chmod +x entrypoint.sh
CMD /entrypoint.sh && nginx -g "daemon off;"