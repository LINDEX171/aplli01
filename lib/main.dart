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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(title: Center(child: Text("appli1")), elevation: 12,),
      body: Container(
       // color: Colors.orange,
        padding: EdgeInsets.all(20),
         margin: EdgeInsets.all(20),
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.topLeft,
          child: Text("hi $counter")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter+=1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



