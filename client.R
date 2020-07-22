library(httr)

hostport <- strsplit(Sys.getenv("PROXY"), ":")[[1]]

r <- GET(Sys.getenv("URL"), config(cainfo = "crawlera-ca.crt"), use_proxy(
    url = hostport[1],
    port = strtoi(hostport[2]),
    username = Sys.getenv("KEY"),
    password = ""
  ))

print(r)

if (r$status_code != 200) {
  quit(status=1)
}
