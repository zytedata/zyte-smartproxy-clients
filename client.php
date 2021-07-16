<?php

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, getenv('URL'));
curl_setopt($ch, CURLOPT_PROXY, getenv('PROXY'));
curl_setopt($ch, CURLOPT_PROXYUSERPWD, getenv('KEY'));
curl_setopt($ch, CURLOPT_CAINFO, 'zyte-smartproxy-ca.crt');

$page = curl_exec($ch);
if (curl_getinfo($ch,  CURLINFO_HTTP_CODE) != 200) {
    exit(1);
}

curl_close($ch);

?>
