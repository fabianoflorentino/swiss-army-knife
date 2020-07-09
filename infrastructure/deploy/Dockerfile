FROM hashicorp/terraform:light

RUN apk add python3 py3-pip make vim bash \
  && mkdir -p /infrastructure \
  && adduser --disabled-password --gecos "" terraform

WORKDIR /infrastructure

USER terraform

ENTRYPOINT [ "sh" ]