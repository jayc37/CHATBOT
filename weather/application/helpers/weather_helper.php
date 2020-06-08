<?php

function prolg($query = '') {
    $result = '';
    $cmd = 'cmd /c pl -f "' . __DIR__ . '\HTCNTT2015.pl" -g "query(X,[' . $query . '],[]),write(X),halt"';
    // $result = shell_exec($cmd);
    $result = "query(weather(thoi_tiet),place(ho_chi_minh))";
    return $result;
    
}

function fahrenheit2celsius($given_value) {
    $celsius = 5 / 9 * ($given_value - 32);
    return $celsius;
}

function celsius2fahrenheit($given_value) {
    $fahrenheit = $given_value * 9 / 5 + 32;
    return $fahrenheit;
}

function YahooApiRequest($name = '') {
    $url = 'https://query.yahooapis.com/v1/public/yql?lang=vi-VN&q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22' . $name . '%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys';
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
    $response = curl_exec($ch);
    curl_close($ch);
    return $response;
}

function prologquery($query = '') {
    $string = str_replace(' ', ',', trim(unicode2telex(urldecode($query))));
    $query_result = prolg($string);
    $query_result = str_replace(",", "", $query_result);


    $data = multiexplode(array('(', ')'), $query_result);
    $root = $data[0];
    $element = array();
    foreach ($data as $key => $value) {
        if ($key % 2 == 1 && $value != '') {
            $element[$value] = $data[$key + 1];
        }
    }
    return array(
        'root' => $root,
        'elements' => $element
    );
}

function multiexplode($delimiters, $string) {

    $ready = str_replace($delimiters, $delimiters[0], $string);
    $launch = explode($delimiters[0], $ready);
    return $launch;
}

function ip2city($param) {
    $url = "http://api.db-ip.com/addrinfo?addr=$param&api_key=c007a8f47f2af91ded3594726d4d237b40d060ab";
    
    $data = json_decode(file_get_contents($url),TRUE);
    
    return $data['city'];
}