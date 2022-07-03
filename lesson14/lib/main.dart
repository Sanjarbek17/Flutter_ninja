import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my first app"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 10,
              child: Image.asset("assets/image.png"),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(50),
                color: Colors.blue,
                child: const Text("0"),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(50),
                color: Colors.green,
                child: const Text("1"),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                padding: const EdgeInsets.all(50),
                color: Colors.purple,
                child: const Text("2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
