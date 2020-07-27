import scrapy
import os

class ClientSpider(scrapy.Spider):
    name = 'client'
    crawlera_enabled = True
    crawlera_apikey = os.environ.get('KEY')
    crawlera_url = 'http://' + os.environ.get('PROXY')

    def start_requests(self):
        yield scrapy.Request(url=os.environ.get('URL'))

    def parse(self, response):
        os.system('touch /GOTIT')
        self.log(response)
