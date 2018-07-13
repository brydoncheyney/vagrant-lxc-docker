FROM ubuntu:latest

RUN apt-get update; apt-get install --yes git bundler rake

VOLUME /src
ENTRYPOINT ["./src/build"]
