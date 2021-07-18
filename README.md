[![python](https://github.com/zytedata/zyte-smartproxy-clients/workflows/Python/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:Python)
[![node](https://github.com/zytedata/zyte-smartproxy-clients/workflows/Node.js/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:Node.js)
[![php](https://github.com/zytedata/zyte-smartproxy-clients/workflows/PHP/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:PHP)
[![java](https://github.com/zytedata/zyte-smartproxy-clients/workflows/Java/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:Java)
[![dotnet](https://github.com/zytedata/zyte-smartproxy-clients/workflows/.NET/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:.NET)
[![ruby](https://github.com/zytedata/zyte-smartproxy-clients/workflows/Ruby/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:Ruby)
[![rust](https://github.com/zytedata/zyte-smartproxy-clients/workflows/Rust/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:Rust)
[![r](https://github.com/zytedata/zyte-smartproxy-clients/workflows/R/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:R)
[![julia](https://github.com/zytedata/zyte-smartproxy-clients/workflows/Julia/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:Julia)
[![firefox](https://github.com/zytedata/zyte-smartproxy-clients/workflows/Firefox/badge.svg)](https://github.com/zytedata/zyte-smartproxy-clients/actions?query=workflow:Firefox)


To scrape locally, ensure `make` and `docker` are installed, then run:
```
PROXY=... KEY=... URL=... make IMAGE
```

Where:
* `PROXY` - Zyte Smart Proxy Manager [API address](https://docs.zyte.com/smart-proxy-manager.html)
* `KEY` - Zyte Smart Proxy Manager [API key](https://app.zyte.com/account/signup/smart-proxy-manager)
* `URL` - URL to scrape
* `IMAGE` - One of the [docker files](docker)

Example:
```
PROXY=proxy.zyte.com:8011 KEY=VALID_API_KEY URL=https://toscrape.com/ make nodejs-14
```
