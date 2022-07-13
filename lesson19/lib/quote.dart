import 'package:flutter/material.dart';
import './ls.dart';

class Quote extends StatelessWidget {
  final Quotes obj;
  final void Function()? delete;
  const Quote({
    required this.delete,
    required this.obj,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              obj.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[900],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              obj.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
                onPressed: delete,
                icon: const Icon(Icons.delete),
                label: const Text('delete quote')),
          ],
        ),
      ),
    );
  }
}
