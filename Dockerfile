FROM ubuntu:latest

#RUN apt-get update && apt-get install -y \
#  python3.10 \
#  python3-pip \
#  git
RUN apt-get update
#RUN apt-get install -y python3.10
RUN apt-get install -y python3-pip
RUN apt-get install -y git

RUN python3 --version

RUN apt-get install -y python-yaml

#RUN python3 -m pip install importlib-resources
#RUN python3 -m pip install PyYAML==6.0.1

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
