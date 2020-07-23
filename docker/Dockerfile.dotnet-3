FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN dotnet tool install -g dotnet-script
ENV PATH=$PATH:/root/.dotnet/tools

COPY crawlera-ca.crt /

RUN cp crawlera-ca.crt /usr/local/share/ca-certificates/ &&\
    update-ca-certificates

RUN openssl pkcs12 -export -nokeys -in crawlera-ca.crt -out crawlera-ca.pfx -password pass:changeit

COPY client.csx /
RUN dotnet script publish client.csx 

CMD /publish/linux-x64/client
