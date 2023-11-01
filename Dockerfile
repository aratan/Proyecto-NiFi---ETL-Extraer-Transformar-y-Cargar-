FROM ubuntu:20.04

COPY ./ /usr/src/app
WORKDIR /usr/src/app/

RUN apt-get update && apt-get install -y openjdk-8-jdk
RUN apt-get install -y nano

CMD ["bash", "launcher_nifi.sh"]
