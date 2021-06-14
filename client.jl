using HTTP, MbedTLS, Base64

conf = MbedTLS.SSLConfig()
MbedTLS.config_defaults!(conf)
MbedTLS.rng!(conf, MbedTLS.seed!(MbedTLS.CtrDrbg(), MbedTLS.Entropy()))
MbedTLS.ca_chain!(conf, MbedTLS.crt_parse_file("crawlera-ca.crt"))
MbedTLS.authmode!(conf, MbedTLS.MBEDTLS_SSL_VERIFY_REQUIRED)

r = HTTP.get(ENV["URL"]; sslconfig=conf,
        headers=["Proxy-Authorization" => "Basic " * Base64.base64encode(ENV["KEY"] * ":")],
        proxy=("http://" * ENV["PROXY"]));

print(String(r.body))
