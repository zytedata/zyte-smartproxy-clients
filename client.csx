using System.Net;
using System.Net.Http;
using System.Net.Security;

var handler = new SocketsHttpHandler {
    Proxy = new WebProxy {
        Address = new Uri("http://" + System.Environment.GetEnvironmentVariable("PROXY")),
        Credentials = new NetworkCredential(System.Environment.GetEnvironmentVariable("KEY"), "")
    },
    SslOptions = new SslClientAuthenticationOptions {
        RemoteCertificateValidationCallback = (a, b, c, d) => true
    }
};

var client = new HttpClient(handler);
HttpResponseMessage response = client.GetAsync(System.Environment.GetEnvironmentVariable("URL")).GetAwaiter().GetResult();
Console.WriteLine(response);

if (!response.IsSuccessStatusCode) {
    return -1;
}
