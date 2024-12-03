import 'package:appli01/pages/home_page.dart';
import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({super.key});

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("settings page"),),
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          child: Text("navigate to the home page"),
          onPressed: () {
           // Navigator.push(context, MaterialPageRoute(builder: (context) {
           //   return MyHomePage();
           // },) ),
            Navigator.pop(context);
        },),
      ),
    );
  }
}
