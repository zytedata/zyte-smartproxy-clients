<?php

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, getenv('URL'));
curl_setopt($ch, CURLOPT_PROXY, getenv('PROXY'));
curl_setopt($ch, CURLOPT_PROXYUSERPWD, getenv('KEY'));
curl_setopt($ch, CURLOPT_HEADER, 1);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
curl_setopt($ch, CURLOPT_TIMEOUT, 180);
curl_setopt($ch, CURLOPT_CAINFO, 'crawlera-ca.crt'); //required for HTTPS
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 1); //required for HTTPS

$scraped_page = curl_exec($ch);

if($scraped_page === false)
{
    echo 'cURL error: ' . curl_error($ch);
    exit(1);
}
else
{
    echo $scraped_page;
}

curl_close($ch);

?>
