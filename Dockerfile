FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apk add --no-cache python3-dev openldap-dev postgresql-dev build-base cyrus-sasl-plain cyrus-sasl-dev cyrus-sasl-gssapiv2 zeromq-dev yasm ffmpeg && \
    pip install --no-cache-dir cython numpy && \
    pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./run.py" ]
