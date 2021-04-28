import requests
import os

proxy = 'http://' + os.environ.get('KEY') + ':@' + os.environ.get('PROXY')

r = requests.get(os.environ.get('URL'), proxies={'https': proxy}, verify='zyte-smartproxy-ca.crt')

print(r)

if (r.status_code == 200):
    print(r.text)
else:
    exit(1)
