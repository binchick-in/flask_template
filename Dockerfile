FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    vim \
    lsof \
    python \
    python-dev \
    python-pip && \
    apt-get clean

ADD . /opt/code
RUN pip install --upgrade pip
RUN pip install -r /opt/code/requirements.txt

#CMD ["python", "/opt/code/run.py"]
WORKDIR /opt/code
USER nobody
EXPOSE 8888
CMD ["/usr/local/bin/uwsgi", "--ini", "/opt/code/uwsgi.ini"]
