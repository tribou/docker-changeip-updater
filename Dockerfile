FROM ubuntu
MAINTAINER tribou

ENV TZ America/Chicago
RUN apt-get update && apt-get install -y wget dnsutils && apt-get autoclean -y
ADD assets /usr/src/myapp
RUN chmod +x /usr/src/myapp/update-script.sh
WORKDIR /usr/src/myapp
CMD ["bash", "update-script.sh"]
