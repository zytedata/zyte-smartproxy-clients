import requests
import os

r = requests.get(
    os.environ.get('URL'),
    proxies={
        'https': 'http://' + os.environ.get('KEY') + ':@' + os.environ.get('PROXY')
    },
    verify='crawlera-ca.crt'
)

print(r.text)

if (r.status_code != 200):
    exit(1)
