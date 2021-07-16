require 'net/http'

url = URI(ENV['URL'])
proxy_host, proxy_port = ENV['PROXY'].split(':')

http = Net::HTTP.new(url.host, url.port, proxy_host, proxy_port, ENV['KEY'], '')
http.ca_file = 'zyte-smartproxy-ca.crt'
http.use_ssl = true

r = http.start() do |h|
    h.request(Net::HTTP::Get.new(url.path))
end

puts r.body

if r.code != '200'
    exit(1)
end
