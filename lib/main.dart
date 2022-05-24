import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Servicios WebMaker',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Servicios WebMaker'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
      ),
      body: ListView(
        children: ListTile.divideTiles(context: context, tiles: [
          const ListTile(
            title: Text('Bases de Datos'),
            subtitle: Text("Guarda información de registros"),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/icon1.png'),
            ),
          ),
          const ListTile(
            title: Text('Dominios Web'),
            subtitle: Text("Lanza tu marca a Internet"),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/icon2.png'),
            ),
          ),
          const ListTile(
            title: Text('Web Hosting'),
            subtitle: Text("Guarda tus páginas en la web"),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/icon3.png'),
            ),
          ),
          const ListTile(
            title: Text('App Móvil'),
            subtitle: Text("Aplicaciones para celulares y tablets"),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/icon4.png'),
            ),
          ),
          const ListTile(
            title: Text('App Web'),
            subtitle: Text("Aplicaciones para navegador"),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/icon5.png'),
            ),
          ),
        ]).toList(),
      ),
    );
  }
}
