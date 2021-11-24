import javax.net.ssl.SSLContext;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicHeader;
import org.apache.http.ssl.SSLContexts;
import org.apache.http.util.EntityUtils;
import java.net.URI;

public class clientApache {
    public static void main(String[] args) throws Exception {
        URI proxy_uri = new URI("http://" + System.getenv("PROXY"));
        URI url_uri = new URI(System.getenv("URL"));

        SSLContext sslcontext = SSLContexts.createDefault();
        // Allow TLSv1.2 protocol only
        SSLConnectionSocketFactory sslsf = new SSLConnectionSocketFactory(
                sslcontext, new String[] {"TLSv1.2"},
                null,
                SSLConnectionSocketFactory.getDefaultHostnameVerifier());

        CredentialsProvider credsProvider = new BasicCredentialsProvider();
        credsProvider.setCredentials(
                new AuthScope(proxy_uri.getHost(), proxy_uri.getPort()),
                new UsernamePasswordCredentials(System.getenv("KEY"), ""));

        try (CloseableHttpClient httpclient = HttpClients.custom()
                .setDefaultCredentialsProvider(credsProvider)
                .setSSLSocketFactory(sslsf)
                .build())
        {
            HttpHost target = new HttpHost(url_uri.getHost(), url_uri.getPort(), url_uri.getScheme());
            HttpHost proxy = new HttpHost(proxy_uri.getHost(), proxy_uri.getPort());

            AuthCache authCache = new BasicAuthCache();

            BasicScheme basicAuth = new BasicScheme();
            basicAuth.processChallenge(
                    new BasicHeader(HttpHeaders.PROXY_AUTHENTICATE,
                                    "Basic realm=\"Zyte Smart Proxy Manager\""));
            authCache.put(proxy, basicAuth);

            HttpClientContext ctx = HttpClientContext.create();
            ctx.setAuthCache(authCache);

            RequestConfig config = RequestConfig.custom()
                .setProxy(proxy)
                .build();

            HttpGet httpget = new HttpGet(url_uri.getPath());
            httpget.setConfig(config);

            System.out.println("Executing request " + httpget.getRequestLine() +
                " to " + target + " via " + proxy);

            try (CloseableHttpResponse response = httpclient.execute(
                target, httpget, ctx))
            {
                System.out.println("----------------------------------------");
                System.out.println(response.getStatusLine());
                System.out.println("----------------------------------------");
                System.out.println(EntityUtils.toString(response.getEntity()));
                EntityUtils.consume(response.getEntity());
                if (response.getStatusLine().getStatusCode() != 200) {
                    System.exit(1);
                }
            }
        }
    }
}
