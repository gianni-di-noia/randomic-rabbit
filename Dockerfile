FROM python:3.7.-slim
RUN pip install --upgrade pip
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -q -r /tmp/requirements.txt
ADD . /opt/app/
WORKDIR /opt/app
CMD gunicorn -k eventlet -w 1 main:SIOAPP --log-level=DEBUG