FROM joseluisq/static-web-server:2-alpine

ADD config.toml /etc/config.toml
RUN mkdir -p /var/public
EXPOSE 8010
CMD ["static-web-server", "-w", "/etc/config.toml"]
