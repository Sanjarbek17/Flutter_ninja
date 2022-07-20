import 'package:flutter/material.dart';
import 'package:lesson22/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Uzbekistan', flag: 'uzb.png', url: 'Asia/Tashkent');
    await instance.getData();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  int counter = 0;
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("loading screen"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        floatingActionButton: FloatingActionButton(
            child: Text('$counter'),
            onPressed: () {
              setState(() {
                counter++;
              });
              // Navigator.pushNamed(context, '/location');
            }),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(time),
        ));
  }
}
