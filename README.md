[![py-scrapy](https://github.com/zytedata/zyte-smartproxy-clients/workflows/py-scrapy/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:py-scrapy)
[![py-requests](https://github.com/zytedata/zyte-smartproxy-clients/workflows/py-requests/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:py-requests)
[![nodejs-10](https://github.com/zytedata/zyte-smartproxy-clients/workflows/nodejs-10/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:nodejs-10)
[![nodejs-12](https://github.com/zytedata/zyte-smartproxy-clients/workflows/nodejs-12/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:nodejs-12)
[![nodejs-14](https://github.com/zytedata/zyte-smartproxy-clients/workflows/nodejs-14/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:nodejs-14)
[![php-5](https://github.com/zytedata/zyte-smartproxy-clients/workflows/php-5/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:php-5)
[![php-7](https://github.com/zytedata/zyte-smartproxy-clients/workflows/php-7/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:php-7)
[![java-7](https://github.com/zytedata/zyte-smartproxy-clients/workflows/java-7/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:java-7)
[![java-14](https://github.com/zytedata/zyte-smartproxy-clients/workflows/java-14/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:java-14)
[![ruby-2](https://github.com/zytedata/zyte-smartproxy-clients/workflows/ruby-2/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:ruby-2)
[![r-4](https://github.com/zytedata/zyte-smartproxy-clients/workflows/r-4/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:r-4)
[![dotnet-3](https://github.com/zytedata/zyte-smartproxy-clients/workflows/dotnet-3/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:dotnet-3)


Ensure you have `docker` and `make` installed and then run:
```
make CLIENT PROXY=... KEY=... URL=...
```

Where:
* `CLIENT` - client name (:point_up: choose any from the badges above :point_up:)
* `PROXY` - [Zyte Smart Proxy Manager](https://docs.zyte.com/smart-proxy-manager.html) API address
* `KEY` - Zyte Smart Proxy Manager [API key](https://support.zyte.com/support/solutions/articles/22000188411)
* `URL` - HTTPS URL to scrape

Example:
```
make nodejs-14 PROXY=proxy.zyte.com:8010 KEY=VALID_API_KEY URL=https://toscrape.com/
```
