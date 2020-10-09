FROM jupyter/base-notebook

COPY src/requirements.txt ./

USER root

RUN apt-get update && apt-get install -y \
    libpq-dev python-dev gcc

USER jovyan

RUN pip3 install --no-cache-dir -r requirements.txt