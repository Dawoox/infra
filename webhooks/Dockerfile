FROM alpine:3.21

RUN apk add --no-cache webhook docker-cli docker-cli-compose git openssh-client gettext

COPY hooks.template.json /etc/hooks.template.json
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
