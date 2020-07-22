using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;

X509Certificate2 cert = new X509Certificate2("crawlera-ca.pfx", "changeit", X509KeyStorageFlags.UserKeySet | X509KeyStorageFlags.EphemeralKeySet);

var handler = new SocketsHttpHandler {
    UseProxy = true,
    Proxy = new WebProxy {
        BypassProxyOnLocal = false,
        Address = new Uri("http://" + System.Environment.GetEnvironmentVariable("PROXY")),
        Credentials = new NetworkCredential(System.Environment.GetEnvironmentVariable("KEY"), "")
    },
    SslOptions = new SslClientAuthenticationOptions {
        ClientCertificates = new X509CertificateCollection(),
        LocalCertificateSelectionCallback = (a, b, c, d, e) => cert
    }
};

handler.SslOptions.ClientCertificates.Add(cert);

var client = new HttpClient(handler);
HttpResponseMessage response = client.GetAsync(System.Environment.GetEnvironmentVariable("URL")).GetAwaiter().GetResult();
Console.WriteLine(response);
