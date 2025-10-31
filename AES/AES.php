<?php 
$aeskey = '^kS1@=Iy+M5%cU&jK9JmP,vE!pN8FwLz6A4eDQo2xxyz0nGZCOX7gqRs3uB_-'; #key must be save in secure form this is just demo
function encrypt($plaintext) {
    if (empty($plaintext)) {
        return null;
    }

    // $config = parse_ini_file('lock.ini');
    // $keyx = $config['aeskey'];
    $key = '^kS1@=Iy+M5%cU&jK9JmP,vE!pN8F5a6d54eDQo2xxyz0nGZCOX7gqRs3uB_-'; //key can be not work for available record, try to to registor new account of not work.
    
    $method = 'aes-256-cbc';
    $iv = chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0);
    return base64_encode(openssl_encrypt($plaintext, $method, $key, OPENSSL_RAW_DATA, $iv));
}

function decrypt($cyfertext) {
    if (empty($cyfertext)) {
        return null;
    }

    // $config = parse_ini_file('lock.ini');
    // $keyx = $config['aeskey'];
    $key = '^kS1@=Iy+M5%cU&jK9JmP,vE!pN8F5a6d54eDQo2xxyz0nGZCOX7gqRs3uB_-'; //key can be not work for available record, try to to registor new account of not work.

    $method = 'aes-256-cbc';
    $iv = chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0) . chr(0x0);
    $decoded = base64_decode($cyfertext);
    return openssl_decrypt($decoded, $method, $key, OPENSSL_RAW_DATA, $iv);
}
?>
