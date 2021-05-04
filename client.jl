using HTTP, MbedTLS, Base64

conf = MbedTLS.SSLConfig()
MbedTLS.config_defaults!(conf)
MbedTLS.rng!(conf, MbedTLS.seed!(MbedTLS.CtrDrbg(), MbedTLS.Entropy()))
MbedTLS.ca_chain!(conf, MbedTLS.crt_parse_file("crawlera-ca.crt"))
MbedTLS.authmode!(conf, MbedTLS.MBEDTLS_SSL_VERIFY_REQUIRED)

auth = ["Proxy-Authorization" => "Basic " * Base64.base64encode(ENV["KEY"] * ":")]
resp = HTTP.get(ENV["URL"]; proxy=("http://" * ENV["PROXY"]), headers=auth, sslconfig=conf);

print(String(resp.body))
