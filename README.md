[![py-scrapy](https://github.com/scrapinghub/crawlera-clients/workflows/py-scrapy/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:py-scrapy)
[![py-requests](https://github.com/scrapinghub/crawlera-clients/workflows/py-requests/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:py-requests)
[![nodejs-10](https://github.com/scrapinghub/crawlera-clients/workflows/nodejs-10/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:nodejs-10)
[![nodejs-12](https://github.com/scrapinghub/crawlera-clients/workflows/nodejs-12/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:nodejs-12)
[![nodejs-14](https://github.com/scrapinghub/crawlera-clients/workflows/nodejs-14/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:nodejs-14)
[![php-5](https://github.com/scrapinghub/crawlera-clients/workflows/php-5/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:php-5)
[![php-7](https://github.com/scrapinghub/crawlera-clients/workflows/php-7/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:php-7)
[![java-7](https://github.com/scrapinghub/crawlera-clients/workflows/java-7/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:java-7)
[![java-14](https://github.com/scrapinghub/crawlera-clients/workflows/java-14/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:java-14)
[![ruby-2](https://github.com/scrapinghub/crawlera-clients/workflows/ruby-2/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:ruby-2)
[![r-4](https://github.com/scrapinghub/crawlera-clients/workflows/r-4/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:r-4)
[![dotnet-3](https://github.com/scrapinghub/crawlera-clients/workflows/dotnet-3/badge.svg)](https://github.com/scrapinghub/crawlera-clients/actions?query=workflow:dotnet-3)


Ensure you have `docker` and `make` installed and then run:
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
