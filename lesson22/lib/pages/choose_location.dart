import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("set state");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton(
        child: Center(child: Text("this is $counter")),
        onPressed: () {
          setState(() {
            counter++;
          });
          Navigator.pushNamed(context, '/');
        },
      ),
    );
  }
}
