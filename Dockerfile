FROM python:3.8

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y curl
RUN apt-get install -y git

ADD . /app
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python", "hello.py"]