FROM python:3.7-alpine

COPY requirements.txt .

RUN apk add vim make sshpass openssh gcc g++ libffi-dev openssl openssl-dev \
  && mkdir -p /infrastructure \
  && adduser --disabled-password --gecos "" ansible \
  && pip install -r requirements.txt

VOLUME [ "/infrastructure" ]

WORKDIR /infrastructure

USER ansible

ENTRYPOINT [ "sh" ]
