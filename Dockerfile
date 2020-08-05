#FROM python:3.8.5
FROM nvidia/cuda:10.1-base
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt install -y python3.8 python3-pip
RUN python3.8 -m pip install --upgrade pip
RUN pip install pipenv

RUN mkdir /app
WORKDIR /app

COPY Pipfile* ./
RUN pipenv sync

COPY * ./
ENTRYPOINT pipenv run python main.py
