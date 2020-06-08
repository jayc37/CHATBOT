<?php

class MY_Controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        session_start();
        $this->load->helper(array('string', 'weather'));
        $this->load->library(array('yahooweather'));
        $this->load->database();
    }

}
