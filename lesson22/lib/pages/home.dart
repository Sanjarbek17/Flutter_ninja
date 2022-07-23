import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    Map data = ModalRoute.of(context)?.settings.arguments as Map;
    // ignore: avoid_print
    print(data['isDaytime']);
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    // ignore: avoid_print
    print("welcome home");
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$bgImage'),
          fit: BoxFit.fill,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(
                Icons.edit_location,
                color: Colors.grey[300],
              ),
              label: Text(
                "Edit location",
                style: TextStyle(color: Colors.grey[300]),
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data['location'],
                    style: const TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              data['time'],
              style: const TextStyle(
                fontSize: 60.0,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
