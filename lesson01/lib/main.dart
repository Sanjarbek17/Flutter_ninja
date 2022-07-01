import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my first app"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
          color: Colors.grey,
          child: const Text("salom"),
        ),
      ),
    );
  }
}
