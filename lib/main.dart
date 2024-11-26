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
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
   HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  final List contacts = [
    "papa",
    "papa dieng",
    "papa fass",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("appli1")),
        elevation: 12,
      ),
      // body: Container(
      //  // color: Colors.orange,
      //   padding: EdgeInsets.all(20),
      //    margin: EdgeInsets.all(20),
      //     height: 200,
      //     width: 400,
      //     decoration: BoxDecoration(
      //       color: Colors.orange,
      //       borderRadius: BorderRadius.circular(20)
      //     ),
      //     alignment: Alignment.topLeft,
      //     child: Text("hi $counter")),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text("text1"),
      //     Text("Text2"),
      //     Image.network("https://thumbs.dreamstime.com/z/wan-wide-area-network-technology-connects-your-offices-data-centers-cloud-applications-storage-together-271663816.jpg", height: 200 , width: 200,)
      //   ],
      // ),
      // body: Row(
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Icon(Icons.thumb_up),
      //     Image.network("https://thumbs.dreamstime.com/z/wan-wide-area-network-technology-connects-your-offices-data-centers-cloud-applications-storage-together-271663816.jpg", height: 200 , width: 200,),
      //     Icon(Icons.thumb_down),
      //   ],
      // ),
      body: ListView.separated(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
         return Container(margin: EdgeInsets.all(10), child: Text(contacts[index]));
        },
         separatorBuilder: (context, index) {
           return Divider();
         },//  scrollDirection: Axis.horizontal,
       ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
