import 'package:flutter/material.dart';
import 'package:my_second_portfolio/activity/home.dart';
import 'package:my_second_portfolio/activity/loading.dart';
import 'package:my_second_portfolio/activity/location.dart';

void main() {
  runApp(MaterialApp(routes: {
    "/": (context) => Loading(),
    "/home": (context) => Home(),
    "/location bta " :(context) => Location(),
  },
  ));

}
