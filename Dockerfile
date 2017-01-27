FROM resin/raspberrypi3-python:latest

RUN apt-get update

COPY . /app/

RUN apt-get install python-gevent
RUN pip install -r /app/requirements.txt

EXPOSE 8000

CMD ["python","/app/acehttp.py"]
