import 'package:flutter/material.dart';
import 'package:around_the_world/pages/home.dart';
import 'package:around_the_world/pages/rules.dart';
import 'package:wordpress_api/wordpress_api.dart';

Future <void> main() async {
  WordPressAPI api = WordPressAPI('po-belu-svetu.zp.ua');

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white
    ),
    initialRoute: '/',
    routes: {
      '/':(context)=>Home(), //it's all our itinerary
      '/rules':(context)=>Rules() //page with rules
    },
  ));
}