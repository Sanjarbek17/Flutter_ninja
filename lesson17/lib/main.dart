import 'package:flutter/material.dart';
import 'clc.dart';

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
  List<Quote> lst = [
    Quote(text: "Fortune favors the bold", author: "Virgil"),
    Quote(text: "I think, therefore I am.", author: 'René Descartes'),
    Quote(text: "Time is money", author: "Benjamin Franklin"),
    Quote(
        text: "You miss 100 percent of the shots you never take.",
        author: "Wayne Gretzky"),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: const Text("To'lov"),
      ),
      body: Center(child: Text("${lst[index].text} -- ${lst[index].author}")),
      // body: Text('salom'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          setState(() {
            index++;
          });
          if (index == 4) {
            index = 0;
          }
        },
        child: const Icon(
          Icons.next_plan,
        ),
      ),
    );
  }
}
