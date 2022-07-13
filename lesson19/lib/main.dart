import 'package:flutter/material.dart';
import './ls.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quotes> lst = [
    Quotes(text: "Fortune favors the bold", author: "Virgil"),
    Quotes(text: "I think, therefore I am.", author: 'René Descartes'),
    Quotes(text: "Time is money", author: "Benjamin Franklin"),
    Quotes(
        text: "You miss 100 percent of the shots you never take.",
        author: "Wayne Gretzky"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quotes"),
      ),
      body: Column(
          children: lst
              .map((qoute) => Quote(
                  obj: qoute,
                  delete: () {
                    setState(() {
                      lst.remove(qoute);
                    });
                  }))
              .toList()),
    );
  }
}
