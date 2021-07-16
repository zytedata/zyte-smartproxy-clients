use std::{fs,env,error};
use reqwest::{Certificate,Proxy,Client};

#[tokio::main]
async fn main() -> Result<(), Box<dyn error::Error>> {
    let pem = fs::read_to_string("zyte-smartproxy-ca.crt")?;
    let cert = Certificate::from_pem(pem.as_bytes())?;

    let proxy_url = format!("https://{}", env::var("PROXY")?);
    let proxy = Proxy::all(proxy_url)?
        .basic_auth(&env::var("KEY")?, "");

    let client = Client::builder()
        .add_root_certificate(cert)
        .proxy(proxy)
        .build()?;

    let resp = client.get(env::var("URL")?).send().await?;
    println!("{:#?}", resp);

    assert!(resp.status() == 200);

    Ok(())
}
