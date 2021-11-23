using HTTP, MbedTLS

ssl = MbedTLS.SSLConfig()
MbedTLS.config_defaults!(ssl)
MbedTLS.rng!(ssl, MbedTLS.seed!(MbedTLS.CtrDrbg(), MbedTLS.Entropy()))
MbedTLS.ca_chain!(ssl, MbedTLS.crt_parse_file("zyte-smartproxy-ca.crt"))
MbedTLS.authmode!(ssl, MbedTLS.MBEDTLS_SSL_VERIFY_REQUIRED)

proxy = "http://" * ENV["KEY"] * ":@" * ENV["PROXY"]

r = HTTP.get(ENV["URL"]; sslconfig=ssl, proxy=proxy)

print(String(r.body))
