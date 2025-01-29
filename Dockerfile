# syntax=docker.io/docker/dockerfile:1.7-labs
FROM alpine:latest
RUN apk add --no-cache bash
WORKDIR /app
COPY run.sh /app/
WORKDIR /scripts
COPY --exclude=run.sh create_*.sh /scripts/
RUN chmod +x /scripts/*.sh
RUN chmod +x /app/run.sh
WORKDIR output
CMD ["bash", "/app/run.sh"]

