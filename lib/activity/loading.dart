import 'package:flutter/material.dart';
import 'package:my_second_portfolio/worker/worker.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late String temperature;
  late String hum;
  late String air_speed;
  late String cloud;
  // made fxn above as can't make init, set and dispose state async functioons.
  void startapp() async {
    worker instance = worker(location: "noida");
    await instance.getData();
    temperature = instance.temperature;
    hum = instance.humidity;
    air_speed = instance.air_speed;
    cloud = instance.cloud;
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "temp_value": temperature,
      "hum_value": hum,
      "air_speed" : air_speed,
      "cloud_value": cloud

    });

    // print(instance.air_speed);
    // print(instance.humidity);
    // print(instance.cloud);
  }

  @override
  void initState() {
    // TODO: implement initState
    startapp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("Loading"),
      ),
    );
  }
}
