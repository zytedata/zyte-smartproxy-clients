[![python](https://github.com/zytedata/zyte-smartproxy-clients/workflows/python/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:python)
[![node](https://github.com/zytedata/zyte-smartproxy-clients/workflows/node/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:node)
[![php](https://github.com/zytedata/zyte-smartproxy-clients/workflows/php/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:php)
[![java](https://github.com/zytedata/zyte-smartproxy-clients/workflows/java/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:java)
[![ruby](https://github.com/zytedata/zyte-smartproxy-clients/workflows/ruby/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:ruby)
[![r](https://github.com/zytedata/zyte-smartproxy-clients/workflows/r/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:r)
[![dotnet](https://github.com/zytedata/zyte-smartproxy-clients/workflows/dotnet/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:dotnet)
[![julia](https://github.com/zytedata/zyte-smartproxy-clients/workflows/julia/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:julia)
[![firefox](https://github.com/zytedata/zyte-smartproxy-clients/workflows/firefox/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:firefox)
[![rust](https://github.com/zytedata/zyte-smartproxy-clients/workflows/rust/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:rust)


To run locally:
```
make IMAGE PROXY=... KEY=... URL=...
```

Where:
* `IMAGE` - Name of [docker image](docker)
* `PROXY` - [Zyte Smart Proxy Manager](https://docs.zyte.com/smart-proxy-manager.html) API address
* `KEY` - Zyte Smart Proxy Manager [API key](https://support.zyte.com/support/solutions/articles/22000188411)
* `URL` - HTTPS URL to scrape

Example:
```
make nodejs-14 PROXY=proxy.zyte.com:8011 KEY=VALID_API_KEY URL=https://toscrape.com/
```
