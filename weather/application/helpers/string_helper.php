<?php

if (!function_exists('mb_str_replace')) {

    function mb_str_replace($search, $replace, $subject) {

        if (is_array($subject)) {
            $ret = array();
            foreach ($subject as $key => $val) {
                $ret[$key] = mb_str_replace($search, $replace, $val);
            }
            return $ret;
        }

        foreach ((array) $search as $key => $s) {
            if ($s == '') {
                continue;
            }
            $r = !is_array($replace) ? $replace : (array_key_exists($key, $replace) ? $replace[$key] : '');
            $pos = mb_strpos($subject, $s);
            while ($pos !== false) {
                $subject = mb_substr($subject, 0, $pos) . $r . mb_substr($subject, $pos + mb_strlen($s));
                $pos = mb_strpos($subject, $s, $pos + mb_strlen($r));
            }
        }

        return $subject;
    }

}

function unicode_telex() {
    $ut = array(
        'AW' => 'Ă',
        'AA' => 'Â',
        'OW' => 'Ơ',
        'EE' => 'Ê',
        'OO' => 'Ô',
        'DD' => 'Đ',
        'UW' => 'Ư',
        //Ă
        'AWS' => 'Ắ',
        'AWF' => 'Ằ',
        'AWX' => 'Ẵ',
        'AWJ' => 'Ặ',
        'AWR' => 'Ẳ',
        //Â
        'AAS' => 'Ấ',
        'AAF' => 'Ầ',
        'AAX' => 'Ẫ',
        'AAJ' => 'Ậ',
        'AAR' => 'Ẩ',
        //A
        'AS' => 'Á',
        'AF' => 'À',
        'AJ' => 'Ạ',
        'AR' => 'Ả',
        'AX' => 'Ã',
        //E
        'ES' => 'É',
        'EF' => 'È',
        'EJ' => 'Ẹ',
        'ER' => 'Ẻ',
        'EX' => 'Ẽ',
        //Ê
        'EES' => 'Ế',
        'EEF' => 'Ề',
        'EEX' => 'Ễ',
        'EEJ' => 'Ệ',
        'EER' => 'Ể',
        //O
        'OS' => 'Ó',
        'OF' => 'Ò',
        'OR' => 'Ỏ',
        'OX' => 'Õ',
        'OJ' => 'Ọ',
        //Ơ
        'OWR' => 'Ở',
        'OWS' => 'Ớ',
        'OWF' => 'Ờ',
        'OWJ' => 'Ợ',
        'OWX' => 'Ỡ',
        //Ồ
        'OOS' => 'Ố',
        'OOF' => 'Ồ',
        'OOR' => 'Ổ',
        'OOX' => 'Ỗ',
        'OOJ' => 'Ộ',
        //Ư
        'UWS' => 'Ứ',
        'UWF' => 'Ừ',
        'UWX' => 'Ữ',
        'UWJ' => 'Ự',
        'UWR' => 'Ử',
        //I
        'IS' => 'Í',
        'IF' => 'Ì',
        'IR' => 'Ỉ',
        'IX' => 'Ĩ',
        'IJ' => 'Ị',
        //Y
        'YS' => 'Ý',
        'YF' => 'Ỳ',
        'YX' => 'Ỹ',
        'YR' => 'Ỷ',
        'YJ' => 'Ỵ',
        //U
        'US' => 'Ú',
        'UF' => 'Ù',
        'UX' => 'Ũ',
        'UJ' => 'Ụ',
        'UR' => 'Ủ',
    );
    return $ut;
}

function unicode2telex($string = '') {
    $string = mb_strtoupper($string);
    $ut = unicode_telex();
    foreach ($ut as $key => $value) {
        $string = str_replace($value, $key, $string);
    }
    return mb_strtolower($string);
}

if (!function_exists('create_slug')) {

    function create_slug($string) {
        $search = array(
            '#(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)#',
            '#(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)#',
            '#(ì|í|ị|ỉ|ĩ)#',
            '#(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)#',
            '#(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)#',
            '#(ỳ|ý|ỵ|ỷ|ỹ)#',
            '#(đ)#',
            '#(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)#',
            '#(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)#',
            '#(Ì|Í|Ị|Ỉ|Ĩ)#',
            '#(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)#',
            '#(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)#',
            '#(Ỳ|Ý|Ỵ|Ỷ|Ỹ)#',
            '#(Đ)#',
            "/[^a-zA-Z0-9\-\_]/",
        );
        $replace = array(
            'a',
            'e',
            'i',
            'o',
            'u',
            'y',
            'd',
            'A',
            'E',
            'I',
            'O',
            'U',
            'Y',
            'D',
            '-',
        );
        $string = preg_replace($search, $replace, $string);
        $string = preg_replace('/(-)+/', '-', $string);
        $string = strtolower($string);
        return $string;
    }

}

if (!function_exists('create_slg')) {

    function create_slg($string) {
        $search = array(
            '#(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)#',
            '#(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)#',
            '#(ì|í|ị|ỉ|ĩ)#',
            '#(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)#',
            '#(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)#',
            '#(ỳ|ý|ỵ|ỷ|ỹ)#',
            '#(đ)#',
            '#(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)#',
            '#(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)#',
            '#(Ì|Í|Ị|Ỉ|Ĩ)#',
            '#(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)#',
            '#(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)#',
            '#(Ỳ|Ý|Ỵ|Ỷ|Ỹ)#',
            '#(Đ)#',
            "/[^a-zA-Z0-9\-\_]/",
        );
        $replace = array(
            'a',
            'e',
            'i',
            'o',
            'u',
            'y',
            'd',
            'A',
            'E',
            'I',
            'O',
            'U',
            'Y',
            'D',
            '_',
        );
        $string = preg_replace($search, $replace, $string);
        $string = preg_replace('/(-)+/', '-', $string);
        $string = strtolower($string);
        return $string;
    }

}

function homnao($param = 'hom_nay') {
    $hom = array(
        '0' => 'hom_nay',
        '-1' => 'hom_qua',
        '+1' => 'ngay_mai',
        '+2' => 'ngay_kia',
        '+3' => 'ngay_mot'
    );
    $thu = array(
        'monday' => 'thu_hai',
        'tuesday' => 'thu_ba',
        'wednesday' => 'thu_tu',
        'thursday' => 'thu_nam',
        'friday' => 'thu_sau',
        'saturday' => 'thu_bay',
        'sunday' => 'chu_nhat',
    );
    foreach ($thu as $key => $value) {
        if ($param == $value) {
            return date('d-m-Y', strtotime("$key this week"));
        }
    }
    foreach ($hom as $key => $value) {
        if ($param == $value) {
            $stop_date = new DateTime();
            $varr = $key . ' day';
            $stop_date->modify($varr);
            return $stop_date->format('d-m-Y');
        }
    }
    return '';
}

function translate($param, $to = 'vi') {
    $ci = & get_instance();
    $ci->load->database();
    $data = $ci->db->select('*')->like('english', $param)->get('dict', 1)->row_array();
    if (isset($data['vietnamese'])) {
        return $data['vietnamese'];
    } else {
        return $param;
    }
}

function alias2string($param) {
    $alias = array(
        'hom_nay' => 'hôm nay',
        'hom_qua' => 'hôm qua',
        'ngay_mai' => 'ngày mai',
        'ngay_kia' => 'ngày kia',
        'ngay_mot' => 'ngày mốt',
        'thu_hai' => 'thứ hai',
        'thu_ba' => 'thứ ba',
        'thu_tu' => 'thứ tư',
        'thu_nam' => 'thứ năm',
        'thu_sau' => 'thứ sáu',
        'thu_bay' => 'thứ bảy',
        'chu_nhat' => 'chủ nhật',
        'nang' => 'nắng',
        'mua' => 'mưa',
        'nong' => 'nóng',
        'lanh' => 'lạnh',
        'mat' => 'mát'
    );
    foreach ($alias as $key => $value) {
        if ($key == $param) {
            return $value;
        }
    }
    return $param;
}

function alias2city($param) {
    $ci = & get_instance();
    $ci->load->database();
    $data = $ci->db->select('*')->like('alias', $param)->get('province', 1)->row_array();
    if (isset($data['name'])) {
        return $data['name'];
    } else {
        return $param;
    }
}
