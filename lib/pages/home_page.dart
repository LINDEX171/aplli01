import 'package:appli01/pages/drawer_page.dart';
import 'package:appli01/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   String email = "";
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
      body: ListView(
        children:[
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "enter your mail",
                  prefixIcon: Icon(Icons.email),
                  helperText: "votre label doit contenir @",
                  //true the inputtext will be filled , false no
                  filled: false,
                fillColor: Colors.blueAccent,
                //if false don't allow the user to write in the textfield
               // enabled: true,
                border: OutlineInputBorder(borderSide: BorderSide(width: 10,),
                )
              ),
              //permet de recuperer ce que l'utilisateur a saisi
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
              
            ),
          ),
          Text(email)
        ]
      ),
    );
  }
}
