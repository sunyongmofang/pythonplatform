FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apk add --no-cache python3-dev openldap-dev postgresql-dev build-base cyrus-sasl-plain cyrus-sasl-dev cyrus-sasl-gssapiv2 && \
    pip install cython numpy && \
    pip install -r requirements.txt

CMD [ "python", "./run.py" ]
