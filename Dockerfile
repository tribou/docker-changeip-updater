FROM ubuntu
MAINTAINER tribou

ENV TZ America/Chicago
RUN apt-get update && apt-get install -y wget dnsutils
ADD assets /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["bash", "update-script.sh"]