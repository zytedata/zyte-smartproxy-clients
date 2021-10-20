import os
import json
from seleniumwire import webdriver
from selenium.webdriver import FirefoxOptions

options = FirefoxOptions()
options.headless = True

driver = webdriver.Firefox(
    options=options,
    seleniumwire_options={
        'proxy': {
            'https': 'https://' + os.environ.get('KEY') + ':@' + os.environ.get('PROXY')
        }
    }
)

driver.get(os.environ.get('URL'))

body = driver.find_element("tag name", "body")
resp = json.loads(body.text)

print(resp['origin'])
