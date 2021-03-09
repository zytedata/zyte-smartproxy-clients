import os
import json
from seleniumwire import webdriver
from selenium.webdriver import FirefoxOptions

options = FirefoxOptions()
options.headless = True

browser = webdriver.Firefox(
    options=options,
    seleniumwire_options={
        'proxy': {
            'https': 'https://' + os.environ.get('KEY') + ':@' + os.environ.get('PROXY')
        }
    }
)

browser.get(os.environ.get('URL'))

body = browser.find_element_by_tag_name("body")
resp = json.loads(body.text)

print(resp['origin'])
