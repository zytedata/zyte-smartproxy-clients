![py-scrapy](https://github.com/scrapinghub/crawlera-clients/workflows/py-scrapy/badge.svg)
![py-requests](https://github.com/scrapinghub/crawlera-clients/workflows/py-requests/badge.svg)
![nodejs-10](https://github.com/scrapinghub/crawlera-clients/workflows/nodejs-10/badge.svg)
![nodejs-12](https://github.com/scrapinghub/crawlera-clients/workflows/nodejs-12/badge.svg)
![nodejs-14](https://github.com/scrapinghub/crawlera-clients/workflows/nodejs-14/badge.svg)
![php-5](https://github.com/scrapinghub/crawlera-clients/workflows/php-5/badge.svg)
![php-7](https://github.com/scrapinghub/crawlera-clients/workflows/php-7/badge.svg)
![java-7](https://github.com/scrapinghub/crawlera-clients/workflows/java-7/badge.svg)
![java-14](https://github.com/scrapinghub/crawlera-clients/workflows/java-14/badge.svg)
![r-4](https://github.com/scrapinghub/crawlera-clients/workflows/r-4/badge.svg)
![ruby-2](https://github.com/scrapinghub/crawlera-clients/workflows/ruby-2/badge.svg)


To run locally you need to have `docker` and `make` installed.

To scrape the site:
```
	make CLIENT PROXY=... KEY=... URL=...
```

Where:
* `CLIENT` - client name (:point_up: choose any from the badges above :point_up:)
* `PROXY` - Crawlera [Proxy API](https://doc.scrapinghub.com/crawlera-proxy-api.html) address
* `KEY` - Crawlera [API key](https://support.scrapinghub.com/support/solutions/articles/22000188411-getting-started-with-crawlera)
* `URL` - HTTPS site to scrape

Example:
```
make nodejs-14 PROXY=proxy.crawlera.com:8010 KEY=VALID_API_KEY URL=https://scrapy.org/
```
