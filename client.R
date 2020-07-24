library(httr)

proxy <- strsplit(Sys.getenv("PROXY"), ":")[[1]]

r <- GET(Sys.getenv("URL"), config(cainfo = "crawlera-ca.crt"), use_proxy(
    url = proxy[1],
    port = strtoi(proxy[2]),
    username = Sys.getenv("KEY"),
    password = ""
  ))

print(r)

if (r$status_code != 200) {
  quit(status=1)
}
