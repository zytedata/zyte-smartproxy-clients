[![python](https://github.com/zytedata/zyte-smartproxy-clients/workflows/python/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:python)
[![node](https://github.com/zytedata/zyte-smartproxy-clients/workflows/node/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:node)
[![php](https://github.com/zytedata/zyte-smartproxy-clients/workflows/php/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:php)
[![java](https://github.com/zytedata/zyte-smartproxy-clients/workflows/java/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:java)
[![dotnet](https://github.com/zytedata/zyte-smartproxy-clients/workflows/dotnet/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:dotnet)
[![ruby](https://github.com/zytedata/zyte-smartproxy-clients/workflows/ruby/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:ruby)
[![rust](https://github.com/zytedata/zyte-smartproxy-clients/workflows/rust/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:rust)
[![r](https://github.com/zytedata/zyte-smartproxy-clients/workflows/r/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:r)
[![julia](https://github.com/zytedata/zyte-smartproxy-clients/workflows/julia/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:julia)
[![firefox](https://github.com/zytedata/zyte-smartproxy-clients/workflows/firefox/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:firefox)


To scrape locally, ensure `make` and `docker` are installed, then run:
```
PROXY=... KEY=... URL=... make IMAGE
```

Where:
* `PROXY` - Zyte Smart Proxy Manager [API address](https://docs.zyte.com/smart-proxy-manager.html)
* `KEY` - Zyte Smart Proxy Manager [API key](https://app.zyte.com/account/signup/smart-proxy-manager)
* `URL` - URL to scrape
* `IMAGE` - One of [docker files](docker)

Example:
```
PROXY=proxy.zyte.com:8011 KEY=VALID_API_KEY URL=https://toscrape.com/ make nodejs-14
```
