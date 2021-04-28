require 'net/http'

url = URI(ENV['URL'])
proxy_host, proxy_port = ENV['PROXY'].split(':')

http = Net::HTTP.new(url.host, url.port, proxy_host, proxy_port, ENV['KEY'], '')

http.use_ssl = true
http.ca_file = 'zyte-smartproxy-ca.crt'

req = Net::HTTP::Get.new(url.path)
res = http.start() do |h|
    h.request(req)
end

puts res
if res.code == '200'
    puts res.body
else
    exit(1)
end
