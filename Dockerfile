FROM python:3.7-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /workspace

RUN pip install pipenv

COPY . /workspace/
RUN pipenv install --system --deploy
EXPOSE 8000



