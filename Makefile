IMAGES=\
	rust \
	nodejs-10 \
	nodejs-12 \
	nodejs-14 \
	php-5 \
	php-7 \
	java-7 \
	java-14 \
	r-4 \
	julia \
	py-requests \
	py-scrapy \
	ruby-2 \
	dotnet-3 \
	dotnet-5 \
	firefox

all: $(IMAGES)

$(IMAGES):
	docker build -f docker/Dockerfile.$@ -t crawlera-clients:$@ .
	docker run --rm --net=host -e URL -e KEY -e PROXY crawlera-clients:$@

.PHONY: all $(IMAGES)
