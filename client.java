import java.net.*;
import java.net.http.*;

public class client {
    public static void main(String[] args) throws Exception {
        URI proxy = new URI("http://" + System.getenv("PROXY"));
        HttpClient http = HttpClient.newBuilder()
            .proxy(ProxySelector.of(new InetSocketAddress(proxy.getHost(), proxy.getPort())))
            .authenticator(new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(System.getenv("KEY"), "".toCharArray());
                }
            })
            .build();

        HttpRequest request = HttpRequest.newBuilder()
            .uri(URI.create(System.getenv("URL")))
            .build();

        HttpResponse<String> response = http.send(request, HttpResponse.BodyHandlers.ofString());

        System.out.print(response.body());
        if (response.statusCode() != 200) {
            System.exit(1);
        }
    }
}
