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
      home: HomePage(),
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
      drawer: Drawer(child:  ListView(
        children: [
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CircleAvatar(backgroundImage: NetworkImage("https://media.licdn.com/media/AAYQAQSOAAgAAQAAAAAAAB-zrMZEDXI2T62PSuT6kpB6qg.png"),maxRadius: 50,),
              SizedBox(height: 15,),
              Text("Ibrahima Dieng",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text("web mobile developer | php-laravel-"
               "dart-flutter-python-django-bootstrap"),
                SizedBox(height: 15,),
                Text("Dakar, Région de Dakar,Sénégal"),
                SizedBox(height: 15,),
              Container(
                color: Colors.grey,
                child: ListTile(onTap: () {

                },title: Text("Experience"),leading: Icon(Icons.add),),

              ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("32", style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text("vues du profil",style: TextStyle(fontSize: 20,color: Colors.grey),),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("34", style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text("impressions du post",style: TextStyle(fontSize: 20,color: Colors.grey),),

                  ],
                )
                       ],),
           )
        ],
      ),),
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
    );
  }
}























