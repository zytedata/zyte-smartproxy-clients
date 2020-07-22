FROM ubuntu:precise-20151020

RUN apt-get update && apt-get -y install curl php5 php5-curl

COPY crawlera-ca.crt client.php /

CMD php client.php
