<?php

class YahooWeather
{
	/** WOEID code city **/
	private $WOEID = '';
	
	/** City name **/
	private $city = '';
	
	/** Unit temp **/
	private $unit = '';

	/** Array with units weather **/
	private $units = array();
	
	/** Array with wind weather **/
	private $wind = array();
	
	/** Array with atmosphere weather **/
	private $atmosphere = array();
	
	/** Array with astronomy weather **/
	private $astronomy = array();
	
	/** Array with geo_location weather **/
	private $geo_location = array();

	/** Array with current weather **/
	private $condition = array();
	
	/** Array with forecast weather **/
	private $forecast = array();
	
	/** If the city is found **/
	public $is_found = TRUE;
	
	/**
	* Class construct
	* @param $WOEID Id location Yahoo! GeoPlanet 
	* @param $unit Celsius [c] or Fahrenheit [f]
	* @return ...
	*/
	 
	public function __construct ($WOEID, $unit = 'f')
	{
		try
		{
			$this->WOEID = (int) $WOEID;
			$this->unit = strtoupper($unit);
			$xml = @simplexml_load_file('http://weather.yahooapis.com/forecastrss?w='.$this->WOEID.'&u='.$this->unit);
			if(!$xml)
			{
				throw new Exception('failed to load external entity');
			}
			$location = $xml->channel->xpath('yweather:location');
			
			if(!empty($location))
			{
				$this->title = $xml->channel->item->title;
				$this->description = $xml->channel->item->description;
				
				$this->city = (string) $xml->channel->children('yweather', TRUE)->location->attributes()->city;
				$this->region = (string) $xml->channel->children('yweather', TRUE)->location->attributes()->region;
				$this->country = (string) $xml->channel->children('yweather', TRUE)->location->attributes()->country;
				
				//Location
				$this->location['city'] = $this->city;
				$this->location['region'] = $this->region;
				$this->location['country'] = $this->country;
				
				//Units
				$this->units['temperature'] = (string) $xml->channel->children('yweather', TRUE)->units->attributes()->temperature;
				$this->units['distance'] = (string) $xml->channel->children('yweather', TRUE)->units->attributes()->distance;
				$this->units['pressure'] = (string) $xml->channel->children('yweather', TRUE)->units->attributes()->pressure;
				$this->units['speed'] = (string) $xml->channel->children('yweather', TRUE)->units->attributes()->speed;
				
				//Wind
				$this->wind['chill'] = (string) $xml->channel->children('yweather', TRUE)->wind->attributes()->chill;
				$this->wind['direction'] = (string) $xml->channel->children('yweather', TRUE)->wind->attributes()->direction;
				$this->wind['speed'] = (string) $xml->channel->children('yweather', TRUE)->wind->attributes()->speed;
				
				//Atmosphere
				$this->atmosphere['humidity'] = (string) $xml->channel->children('yweather', TRUE)->atmosphere->attributes()->humidity;
				$this->atmosphere['visibility'] = (string) $xml->channel->children('yweather', TRUE)->atmosphere->attributes()->visibility;
				$this->atmosphere['pressure'] = (string) $xml->channel->children('yweather', TRUE)->atmosphere->attributes()->pressure;
				$this->atmosphere['rising'] = (string) $xml->channel->children('yweather', TRUE)->atmosphere->attributes()->rising;
				
				//Astronomy
				$this->astronomy['sunrise'] = (string) $xml->channel->children('yweather', TRUE)->astronomy->attributes()->sunrise;
				$this->astronomy['sunset'] = (string) $xml->channel->children('yweather', TRUE)->astronomy->attributes()->sunset;
				
				//Geo Location
				$this->geo_location['lat'] = (string)$xml->channel->item->children('geo', TRUE)->lat;
				$this->geo_location['long'] = (string)$xml->channel->item->children('geo', TRUE)->long;
				
				//Current condition
				$this->condition['text'] = (string) $xml->channel->item->children('yweather', TRUE)->condition->attributes()->text;
				$this->condition['code'] = (string) $xml->channel->item->children('yweather', TRUE)->condition->attributes()->code;
				$this->condition['temp'] = (string) $xml->channel->item->children('yweather', TRUE)->condition->attributes()->temp;
				$this->condition['date'] = (string) $xml->channel->item->children('yweather', TRUE)->condition->attributes()->date;
				
				//Forecast
				$forecast_values = $xml->channel->item->xpath('yweather:forecast');
				foreach($forecast_values as $values)
				{
					$this->forecast[] = array(
						"day" => (string) $values['day'],
						"date" => (string) $values['date'],
						"high" => (string) $values['high'],
						"low" => (string) $values['low'],
						"text" => (string) $values['text'],
						"code" => (string) $values['code'],
					);
				}
			}
			else
			{
				echo "Location not found";
				$this->is_found = FALSE;
			}
		}catch(Exception $e)
		{
			echo $e->getMessage();
		}
	}

	/**
	 * Get the city
	 */
	public function getCity()
	{
		return $this->city;
	}
	
	/**
	 * Get unit
	 */
	public function getUnit()
	{
		return $this->unit;
	}
	
	/**
	 * Get the current weather
	 */
	public function getCondition()
	{
		return $this->condition;
	}
	
	/**
	 * Get the forecast weather
	 */
	public function getForecast()
	{
		return $this->forecast;
	}
	
	/**
	 * Get the wind weather
	 */
	public function getWind()
	{
		return $this->wind;
	}
	
	/**
	 * Get the atmosphere weather
	 */
	public function getAtmosphere()
	{
		return $this->atmosphere;
	}
	
	/**
	 * Get the astronomy weather
	 */
	public function getAstronomy()
	{
		return $this->astronomy;
	}
	
	/**
	 * Get the geo-location weather
	 */
	public function getGeoLocation()
	{
		return $this->geo_location;
	}
	
	/**
	 * If location was found
	 */
	public function isFound()
	{
		return $this->is_found;
	}	
}
?>