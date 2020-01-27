FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    vim \
    lsof \
    python3.7 \
    python3.7-dev \
    python3-pip && \
    apt-get clean

ADD requirements.txt /code/
RUN /usr/bin/python3.7 -m pip install -r /code/requirements.txt
# RUN pip3 install -r /code/requirements.txt
ADD . /code
WORKDIR /code
USER nobody
EXPOSE 8888
ENTRYPOINT ["/usr/local/bin/uwsgi", "--ini"]
