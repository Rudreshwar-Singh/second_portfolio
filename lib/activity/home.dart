import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // void timer() {
  //  Future.delayed(Duration(seconds: 3), () {
// Print("Alrm is ringing")
// }

  //   print("you can do other stuff");
  // }

//Async- functions start but return some delayed
  // Future.delayed - Function start after some delayed
  // await is like buffer logo until the fxn is not completed it wait there only and return the value after delay
  // String username = 'null';
  // void getdata() async {
  //   Response response =
  //       await get("https://mytimeapi.herokuapp.com/time/Asia/Kolkata");
  //   Map data = jsonDecode(response.body);
  //   print(data);
  // }
  // void getData() async {
  //   await Future.delayed(Duration(seconds: 3), () {
  //     username = 'Rudreshwar';
  //   });
  //   // print("$username");
  // }

  // void showdata() async {
  //   //  await getData();
  //   print("$username");
  // }

  // void getData() async {
  //   String url =
  //       "http://api.weatherapi.com/v1/current.json?key=dd06772b98a749e4a0482845242402&q=noida";
  //   Response response = await get(Uri.parse(url));
  //   Map data = jsonDecode(response.body);
  //   Map temp_data = data['current'];
  //   Map temp = temp_data['condition'];
  //   String data_ru = temp['text'];
  
  //   print(data_ru);
  // }

  // int counter = 1;
  @override
  void initState() {
    super
        .initState(); // it is called in starting when we have to collect data from any API
    // getData();
    // showdata();
    // timer();

    print("this is init state");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(
        fn); // It is called when user click any button link in app to move to another page
    print("set state called");
  }

  @override
  void dispose() {
    super.dispose(); // called in end when user return back
    print("widget is destroyed");
  }

  Widget build(BuildContext context) {
    Map<String, dynamic> info = {};
    info = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
        appBar: AppBar(
          title: Text("home activity"),
        ),
        body: Column(
          children: <Widget>[
            FloatingActionButton(onPressed: () {}),
            Text(info["temp_value"]),
            Text(info["cloud_value"]),
            Text(info["hum_value"]),
            Text(info["air_speed"]),
          ],
        ));
  }
}
