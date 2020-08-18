IMAGES=nodejs-10 nodejs-12 nodejs-14 php-5 php-7 java-7 java-14 r-4 py-requests py-scrapy ruby-2
#IMAGES=dotnet-3

$(IMAGES):
	docker build -f docker/Dockerfile.$@ -t crawlera-clients:$@ .
	docker run --rm --net=host -e URL -e KEY -e PROXY crawlera-clients:$@

all: $(IMAGES)

.PHONY: all $(IMAGES)
