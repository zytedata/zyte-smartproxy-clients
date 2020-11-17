using System.Net;
using System.Net.Http;
using System.Net.Security;

var handler = new SocketsHttpHandler {
    Proxy = new WebProxy {
        Address = new Uri("http://" + System.Environment.GetEnvironmentVariable("PROXY"))
    },
    SslOptions = new SslClientAuthenticationOptions {
        RemoteCertificateValidationCallback = (a, b, c, d) => true
    }
};

var client = new HttpClient(handler);

client.DefaultRequestHeaders.Add(
    "Proxy-Authorization",
    "Basic " + System.Convert.ToBase64String(System.Text.Encoding.ASCII.GetBytes(
        System.Environment.GetEnvironmentVariable("KEY")  + ":"))
);

HttpResponseMessage response = client.GetAsync(System.Environment.GetEnvironmentVariable("URL")).GetAwaiter().GetResult();
Console.WriteLine(response);

if (!response.IsSuccessStatusCode) {
    return -1;
}
