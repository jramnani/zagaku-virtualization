FROM ubuntu:14.04.5

# Install dependencies
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python python-dev python-pip python-virtualenv

RUN mkdir /app
ADD hello-flask /app
RUN pip install -r /app/requirements.txt

EXPOSE 8080
CMD ["python", "/app/app.py"]
