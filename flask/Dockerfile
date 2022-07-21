FROM python:3.10.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt
COPY . /code

# CMD ["python", "app.py"]
CMD gunicorn --bind 0.0.0.0:$PORT -w 3 run:app
