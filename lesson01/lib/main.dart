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
            const Text("text"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("button"),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              color: Colors.grey,
              child: const Text("salom"),
            ),
          ],
        ),
      ),
    );
  }
}
