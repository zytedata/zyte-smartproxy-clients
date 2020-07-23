CLIENTS=nodejs-10 nodejs-12 nodejs-14 php-5 php-7 java-7 java-14 r-4 python-3 ruby-2
#CLIENTS=dotnet-3

help:
	@echo "Usage:"
	@echo "    make build"
	@echo "    make ENV PROXY=<ADDR:PORT> KEY=<VALID_API_KEY> URL=<SITE>"
	@echo "Where:"
	@echo "    PROXY  Crawlera adrress and port"
	@echo "    KEY    Crawlera API key"
	@echo "    URL    Site to scrape"
	@echo "    ENV    $(CLIENTS) all"
	@echo "Example:"
	@echo "    make nodejs-14 PROXY=localhost:32788 KEY=VALID_API_KEY URL=https://scrapy.org/"

build:
	@for C in $(CLIENTS); do \
		docker build -f docker/Dockerfile.$$C -t crawlera-clients:$$C . || exit 1;\
	done

all: $(CLIENTS)

RUN=@docker run --rm --net=host -e URL -e KEY -e PROXY crawlera-clients:$@

nodejs-10:
	$(RUN)

nodejs-12:
	$(RUN)

nodejs-14:
	$(RUN)

php-5:
	$(RUN)

php-7:
	$(RUN)

java-7:
	$(RUN)

java-14:
	$(RUN)

r-4:
	$(RUN)

dotnet-3:
	$(RUN)

python-3:
	$(RUN)

ruby-2:
	$(RUN)

.PHONY: help build all $(CLIENTS)
