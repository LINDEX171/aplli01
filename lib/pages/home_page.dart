import 'package:appli01/pages/drawer_page.dart';
import 'package:appli01/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // leading: Icon(Icons.menu),
        title: Text("myappbar"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
        elevation: 14,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          child: Text("navigate to the seetings page"),
          onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) {
           return MySettingsPage();
         },),);
        },),
      ),
    );
  }
}
