FROM python:3.10.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/requirements.txt
RUN python -m pip install --no-cache-dir --disable-pip-version-check --requirement requirements.txt
COPY . /code

