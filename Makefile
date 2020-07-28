IMAGES=nodejs-10 nodejs-12 nodejs-14 php-5 php-7 java-7 java-14 r-4 py-requests py-scrapy ruby-2
#IMAGES=dotnet-3

help:
	@echo "Build images:"
	@echo "    make build"
	@echo "Request Crawlera from inside the image:"
	@echo "    make IMAGE PROXY=... KEY=... URL=..."
	@echo "Where:"
	@echo "    IMAGE  $(IMAGES) all"
	@echo "    PROXY  Address of Crawlera proxy API"
	@echo "    KEY    Crawlera API key"
	@echo "    URL    Site to scrape"
	@echo "Example:"
	@echo "    make nodejs-14 PROXY=localhost:32788 KEY=VALID_API_KEY URL=https://scrapy.org/"

build:
	@for C in $(IMAGES); do \
		docker build -f docker/Dockerfile.$$C -t crawlera-clients:$$C . || exit 1;\
	done

$(IMAGES):
	docker run --rm --net=host -e URL -e KEY -e PROXY crawlera-clients:$@

all: $(IMAGES)

.PHONY: help build all $(IMAGES)
