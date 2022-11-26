FROM python:3.10

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app
COPY start.sh /usr/src/app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD sh start.sh