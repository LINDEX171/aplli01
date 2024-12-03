import 'package:appli01/pages/drawer_page.dart';
import 'package:appli01/pages/home_page.dart';
import 'package:appli01/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/settings": (context) => MySettingsPage(),
      },
    );
  }
}














