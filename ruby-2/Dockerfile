FROM ruby:2.7

COPY crawlera-ca.crt client.rb /

CMD env http_proxy=$PROXY ruby client.rb
