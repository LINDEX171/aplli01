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
 Color bg  = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
     floatingActionButton: FloatingActionButton(onPressed: () {
       
     },child: Icon(Icons.confirmation_num_sharp),elevation: 0,backgroundColor: Colors.blue,foregroundColor: Colors.white,),
      body: ListView(children: [
        Center(
          child: ElevatedButton(

            style: ElevatedButton.styleFrom( backgroundColor: Colors.black,minimumSize: Size(50, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              onPressed: () {
             setState(() {
               bg= Colors.black;
             });
          }, child: Text("elevation button"),),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom( backgroundColor: Colors.red,minimumSize: Size(50, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
            onPressed: () {
           setState(() {
               bg= Colors.red;
             });
        }, child: Text("outlined button"),),
        IconButton(
            style: OutlinedButton.styleFrom( backgroundColor: Colors.yellow,minimumSize: Size(50, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),onPressed: () {
          setState(() {
            bg= Colors.yellow;
          });
        }, icon: Icon(Icons.home))
      ],
      ),
    );
  }
}
