IMAGES=nodejs-10 nodejs-12 nodejs-14 php-5 php-7 java-7 java-14 r-4 py-requests py-scrapy ruby-2 dotnet-3

all: $(IMAGES)

$(IMAGES):
	docker build -f docker/Dockerfile.$@ -t zyte-smartproxy-clients:$@ .
	docker run --rm --net=host -e URL -e KEY -e PROXY zyte-smartproxy-clients:$@

.PHONY: all $(IMAGES)
