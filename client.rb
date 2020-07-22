require 'net/http'

url = URI(ENV['URL'])
phost, pport = ENV['PROXY'].split(':')

http = Net::HTTP.new(url.host, url.port, phost, pport, ENV['KEY'], '')

http.use_ssl = true
http.ca_file = 'crawlera-ca.crt'

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
