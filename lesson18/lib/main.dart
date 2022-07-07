import 'package:flutter/material.dart';
import './ls.dart';

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
      body: Column(children: lst.map((e) => quotes(e.text, e.author)).toList()),
    );
  }
}

Widget quotes(String text, String author) {
  return Card(
    margin: const EdgeInsets.all(10.0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[900],
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    ),
  );
}
