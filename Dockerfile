FROM python:3.8-alpine
WORKDIR /home/shahriar/Work/django-docker
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1



RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
RUN apk --update add libxml2-dev libxslt-dev libffi-dev gcc musl-dev libgcc openssl-dev curl
RUN apk add jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev
RUN pip install psycopg2

COPY ./requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .
