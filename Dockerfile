FROM python:3.8-slim-buster

# set PYTHONUNBUFFERED to print logs immediately.
ENV PYTHONUNBUFFERED=1
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV PYTHONPATH /root

RUN apt-get update \
    && apt-get install \
        curl \
        ssh \
        git -y

COPY flyte_config.yaml /root/config.yaml