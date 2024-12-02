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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.network(
                "https://th.bing.com/th/id/OIP.9SmZ8rqMhIoMSnZ5_zK3LgHaFj?rs=1&pid=ImgDetMain",
              ),
            ),
            ListTile(
              title: Text("parametre"),
              leading: Icon(Icons.settings,),
              subtitle: Text("page parameter"),
              trailing: Icon(Icons.add),
              onTap: () {

              },
            ),
            ListTile(
              title: Text("profile"),
              leading: Icon(Icons.person,),
              subtitle: Text("page profile"),

            ),
            ListTile(
              title: Text("help"),
              leading: Icon(Icons.help,),
              subtitle: Text("page help"),
            ),
            ListTile(
              title: Text("quittez"),
              leading: Icon(Icons.cancel,),
              subtitle: Text("page cancel"),
            ),

          ],
        ),
      ),
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
