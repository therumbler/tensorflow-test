FROM python:3.8.5
RUN pip install --upgrade pip
RUN pip install pipenv

RUN mkdir /app
WORKDIR /app

COPY Pipfile* ./
RUN pipenv sync

COPY * ./
ENTRYPOINT pipenv run python main.py