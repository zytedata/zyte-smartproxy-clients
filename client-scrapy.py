import scrapy
import os

class ClientSpider(scrapy.Spider):
    name = 'client'
    zyte_smartproxy_enabled = True
    zyte_smartproxy_apikey = os.environ.get('KEY')
    zyte_smartproxy_url = 'http://' + os.environ.get('PROXY')

    def start_requests(self):
        self.logger.debug(f'Key: {self.zyte_smartproxy_apikey!r}')
        self.logger.debug(f'Proxy URL: {self.zyte_smartproxy_url!r}')
        self.logger.debug(f'URL: {os.environ.get('URL')!r}')
        yield scrapy.Request(url=os.environ.get('URL'))

    def parse(self, response):
        os.system('touch /GOTIT')
        self.log(response)
