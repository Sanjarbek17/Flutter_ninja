import 'package:flutter/material.dart';

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
  List<String> lst = ['aefadsfaefa', 'asdfefadfa', 'fa;ewifa;dshja;dfjkadsf'];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          setState(() {});
          index++;
          if (index == 3) {
            index = 0;
          }
        },
        child: const Icon(
          Icons.next_plan,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text("list data"),
      ),
      body: Center(child: Text(lst[index])),
    );
  }
}
