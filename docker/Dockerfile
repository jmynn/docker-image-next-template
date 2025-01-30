FROM alpine:latest
RUN apk add --no-cache bash
WORKDIR /app
COPY run.sh /app/
WORKDIR /scripts
COPY create_*.sh /scripts/
COPY add_*.sh /scripts/
COPY ./template/*.sh /scripts/template/
RUN chmod +x /scripts/*.sh
RUN chmod +x /scripts/template/*.sh
RUN chmod +x /app/run.sh
WORKDIR /output/styles
CMD ["bash", "/app/run.sh"]


