<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class miracle extends MY_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        
    }

    public function run() {
        $allProvinces = $this->db->select('*')->get('province')->result_array();
        foreach ($allProvinces as $k => $val) {
            $province = create_slg($val['name']);
            $this->yahooweather->setCity($val['name']);
            $this->yahooweather->parse();
            $forecast = $this->yahooweather->getForecast();
            $weather_info = array();
            foreach ($forecast as $key => $value) {
                $data = array();
                $low = round(fahrenheit2celsius($value['low']), 0);
                $high = round(fahrenheit2celsius($value['high']), 0);

                $data['temperature'] = "từ $low độ C đến $high độ C";
                $data['place'] = $province;
                $data['ngay'] = date('d-m-Y', strtotime($value['date']));
                $data['weather'] = translate($value['text']);
                $weather_info[] = $data;
            }
            $this->db->insert_batch('weather', $weather_info);
        }
    }

    public function provinces() {
        $allProvinces = $this->db->select('*')->get('province')->result_array();
        print_r($allProvinces);
        foreach ($allProvinces as $k => $val) {
            $data['alias'] = create_slg($val['name']);
            $this->db->where('provinceid', $val['provinceid']);
            $this->db->update('province', $data);
        }
    }

}
