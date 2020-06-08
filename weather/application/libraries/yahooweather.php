<?php

class yahooweather {

    private $city = '';
    private $response;
    private $channel = array();
    private $units = array();
    private $atmospheres;
    private $winds;
    private $item = array();
    private $forecast;
    private $condition;

    public function __construct($city = '') {
        
    }



    public function request() {
        if ($this->city != '') {
            $name = urlencode($this->city);
            $url = 'https://query.yahooapis.com/v1/public/yql?lang=vi-VN&q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22' . $name . '%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys';
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
            $this->response = curl_exec($ch);
            curl_close($ch);
            return $this->response;
        } else {
            return FALSE;
        }
    }

    public function setCity($param) {
        $this->city = $param;
    }

    public function getUnit($param = '') {
        if ($param = 'temperature') {
            return $this->units['temperature'];
        } else {
            return $this->units;
        }
    }
    
    public function getForecast() {
        return $this->forecast;
    }

    public function parse() {
        if ($this->request()) {
            $data = $this->responseArray();

            if (is_array($data['query']['results']['channel'])) {
                $this->channel = $data['query']['results']['channel'];
                $this->item = $this->channel['item'];
                $this->condition = $this->item['condition'];
                $this->forecast = $this->item['forecast'];
            } else {
                return FALSE;
            }
        } else {
            return FALSE;
        }
    }

    public function responseJson() {
        return $this->response;
    }

    public function responseArray() {
        return json_decode($this->response, true);
    }

}
