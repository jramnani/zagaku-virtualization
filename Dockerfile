FROM python:3.5.2

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

RUN mkdir /app
ADD hello-flask /app
RUN pip install -r /app/requirements.txt

EXPOSE 8080
CMD ["python", "/app/app.py"]
