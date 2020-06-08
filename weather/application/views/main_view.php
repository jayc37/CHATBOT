<html><head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Thời tiết</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
        <style>#custom-search-input{
                padding: 3px;
                border: solid 1px #E4E4E4;
                border-radius: 6px;
                background-color: #fff;
            }

            #custom-search-input input{
                border: 0;
                box-shadow: none;
            }

            #custom-search-input button{
                margin: 2px 0 0 0;
                background: none;
                box-shadow: none;
                border: 0;
                color: #666666;
                padding: 0 8px 0 10px;
                border-left: solid 1px #ccc;
            }

            #custom-search-input button:hover{
                border: 0;
                box-shadow: none;
                border-left: solid 1px #ccc;
            }

            #custom-search-input .glyphicon-search{
                font-size: 23px;
            }
        </style>
        <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>

        <script type="text/javascript">
            function getLocation() {

                if (navigator.geolocation) {
                    // timeout at 60000 milliseconds (60 seconds)
                    var options = {timeout: 60000};
                    navigator.geolocation.getCurrentPosition(showLocation, errorHandler, options);
                } else {
                    console.log("Sorry, browser does not support geolocation!");
                }
            }
            function errorHandler(err) {
                if (err.code == 1) {
                    console.log("Error: Access is denied!");
                } else if (err.code == 2) {
                    console.log("Error: Position is unavailable!");
                } else {
                    console.log("Error");
                }
            }
            function showLocation(position) {
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;
                console.log(position);
                var lat = position.coords.latitude;
                var lng = position.coords.longitude;
                var latlng = new google.maps.LatLng(lat, lng);

                var geocoder = new google.maps.Geocoder();
                geocoder.geocode({'latLng': latlng}, function (results, status) {
                    console.log(results);
                    if (status == google.maps.GeocoderStatus.OK) {
                        var location = [];
                        jQuery.each(results[0].address_components, function (index, item) {
                            if (jQuery.inArray("route", item.types) == -1
                                    && jQuery.inArray("street_number", item.types) == -1
                                    && jQuery.inArray("sublocality_level_1", item.types) == -1
                                    && jQuery.inArray("neighborhood", item.types) == -1
                                    && jQuery.inArray("locality", item.types) == -1
                                    && jQuery.inArray("administrative_area_level_2", item.types) == -1) {
                                console.log(item);
                                location.push(item.long_name);

                            }
                            if (jQuery.inArray("administrative_area_level_1", item.types) == 0) {
                                console.log(item);
                                $.post('api/ip_session', {city: item.long_name});
                            }
                        });
                        location = location.join(", ");
                        console.log(location);
                        $('.info').html("Bạn đang ở: " + location);
                    }
                });
            }
            $(document).ready(function () {
                $('#custom-search-input button').click(function () {
                    var search_term = $('#custom-search-input .search_term').val();
                    $.get('api/query/' + encodeURIComponent(search_term), function (data) {
                        $('div.result').html(data);
                    });
                });
				$('#custom-search-input .search_term').keypress(function(event){

        var keycode = (event.keyCode ? event.keyCode : event.which);
        if(keycode == '13'){
			                    var search_term = $('#custom-search-input .search_term').val();
                    $.get('api/query/' + encodeURIComponent(search_term), function (data) {
                        $('div.result').html(data);
                    });
        }
        event.stopPropagation();
    });
            });
            if (getLocation()) {
                var current_location = getLocation();
//                jQuery('#location').val(current_location.location);
//                jQuery('#location_lat').val(current_location.lat);
//                jQuery('#location_lng').val(current_location.lng);
//                jQuery('#location_name').val(current_location.location);
            } else {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (position) {
                        console.log(position);
                    });
                }
            }
        </script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Thông tin thời tiết</h2>
                    <div class="info"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h2>Tra cứu thông tin thời tiết</h2>
                        <div id="custom-search-input">
                            <div class="input-group col-md-12">
                                <input type="text" class="form-control input-lg search_term" name="search_term" placeholder="Thời tiết ở hồ chí minh như thế nào">
                                <span class="input-group-btn">
                                    <button class="btn btn-info btn-lg query_button" type="button">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>

                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h2>Kết quả tra cứu thông tin thời tiết</h2>
                    <div class="result"></div>

                </div>
            </div>

        </div>

    </body>
</html>