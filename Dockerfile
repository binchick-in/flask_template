FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    vim \
    lsof \
    python3 \
    python3-dev \
    python3-pip && \
    apt-get clean

ADD . /opt/code
RUN pip3 install -r /opt/code/requirements.txt

#CMD ["python", "/opt/code/run.py"]
WORKDIR /opt/code
USER nobody
EXPOSE 8888
CMD ["/usr/local/bin/uwsgi", "--ini", "/opt/code/uwsgi.ini"]
