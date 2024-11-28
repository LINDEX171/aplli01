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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     floatingActionButton: FloatingActionButton(onPressed: () {
       
     },child: Icon(Icons.confirmation_num_sharp),elevation: 0,backgroundColor: Colors.blue,foregroundColor: Colors.white,),
      body: ListView(children: [
        Center(
          child: ElevatedButton(

            style: ElevatedButton.styleFrom( backgroundColor: Colors.black,minimumSize: Size(50, 50)),
              onPressed: () {

          }, child: Text("elevation button"),),
        ),
        OutlinedButton(
            onPressed: () {

        }, child: Text("outlined bouton"),),
        IconButton(onPressed: () {
          
        }, icon: Icon(Icons.home))
      ],
      ),
    );
  }
}
