import requests
import os

url = os.environ.get("URL")
proxy = os.environ.get("PROXY")
proxy_auth = os.environ.get("KEY") + ":" # Make sure to include ':' at the end
proxies = {"https": "https://{}@{}/".format(proxy_auth, proxy),
      "http": "http://{}@{}/".format(proxy_auth, proxy)}

r = requests.get(url, proxies=proxies, verify="crawlera-ca.crt")

print("""
Requesting [{}]
through proxy [{}]

Request Headers:
{}

Response Time: {}
Response Code: {}
Response Headers:
{}

""".format(url, proxy, r.request.headers, r.elapsed.total_seconds(),
           r.status_code, r.headers, r.text))
