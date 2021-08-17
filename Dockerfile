FROM python:3.9.4-slim
LABEL maintainer="Rhuan Karlus Silva"

ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install -y make gcc
RUN rm -rf /var/lib/apt/lists/*
RUN pip install -U pip
RUN pip install -U poetry

RUN export PATH="/usr/bin/make:${PATH}"
