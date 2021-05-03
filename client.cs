using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace zyte
{
    class client
    {
        static async Task<int> Main()
        {
            var http = new HttpClient(
                new SocketsHttpHandler {
                    Proxy = new WebProxy {
                        Address = new Uri("http://" + System.Environment.GetEnvironmentVariable("PROXY")),
                        Credentials = new NetworkCredential(System.Environment.GetEnvironmentVariable("KEY"), "")
                    }
            });

            var response = await http.GetAsync(System.Environment.GetEnvironmentVariable("URL"));
            Console.Write(await response.Content.ReadAsStringAsync());

            return response.IsSuccessStatusCode ? 0 : -1;
        }
    }
}
