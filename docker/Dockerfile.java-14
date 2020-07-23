FROM openjdk:14-jdk-alpine

ENV HTTPCLIENT=4.5.9
ENV HTTPCORE=4.4.11
ENV HTTPPATH=httpcomponents-client-$HTTPCLIENT
ENV CERTPATH=$JAVA_HOME/lib/security/cacerts

RUN wget http://archive.apache.org/dist/httpcomponents/httpclient/binary/$HTTPPATH-bin.tar.gz -O - | tar xz

COPY crawlera-ca.crt .
RUN keytool -noprompt -import -file crawlera-ca.crt -storepass changeit -keystore $CERTPATH -alias crawleracert

COPY client.java .
RUN javac -cp $HTTPPATH/lib/httpclient-$HTTPCLIENT.jar:$HTTPPATH/lib/httpcore-$HTTPCORE.jar client.java

CMD java -cp $HTTPPATH/lib/*:. client
