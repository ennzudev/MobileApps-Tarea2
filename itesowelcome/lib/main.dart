import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  MyApp createState() => MyApp();
}

class MyApp extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}