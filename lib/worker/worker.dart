import 'package:http/http.dart';
import 'dart:convert';

class worker {
  final String location;
  late String temp;
  late String humidity;
  late String air_speed;
  late String precipitate;
  late String cloud;
  late String temperature;
  // constructor
  worker({required this.location});//if don't add curly brackets then will write naything randomly in "ghadha" but by this we have to use location : so we can know we haveto write here location

  Future<void> getData() async {
    try{
      String url =
        "http://api.weatherapi.com/v1/current.json?key=dd06772b98a749e4a0482845242402&q=$location";
    Response response = await get(Uri.parse(url));

    // getting values
    Map data = jsonDecode(response.body);
    Map temp_data = data['location'];
    String gettemp = temp_data['name'];
    Map hum = data['current'];
    String gethumidity = hum['humidity'].toString();
    String getair_speed = hum['wind_kph'].toString();
    String getprecipitate = hum['precip_in'].toString();
    String getcloud = hum['cloud'].toString();
    String gettemperatutre = hum['temp_c'].toString();

//  Assigning values

    temp = gettemp;
    humidity = gethumidity;
    air_speed = getair_speed;
    precipitate = getprecipitate;
    cloud = getcloud;
    temperature = gettemperatutre;
    }catch(e)
    {
      temp = "Error Occurred"; humidity = "Error Occurred";
    air_speed = "Error Occurred";;
    precipitate = "Error Occurred";
    cloud = "Error Occurred";  temperature = "Error Occurred";
    }
    
  }
}
