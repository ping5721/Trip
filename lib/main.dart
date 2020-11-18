import 'package:TripApp/screen/homescreen.dart';
import 'package:TripApp/screen/loginscreen.dart';
import 'package:TripApp/screen/profilescreen.dart';
import 'package:TripApp/screen/username.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //SharedPreferences prefs = await SharedPreferences.getInstance();
  //var email = prefs.getString('email');

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'TripApp',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    darkTheme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Loginscreen(),
    routes: {
      '/homepage': (context) => Homepage(),
      '/profile': (context) => Profilescreen(),
      '/login': (context) => Loginscreen(),
      '/usernamecreate': (context) => UsernameCrate(),
    },
  ));
}
