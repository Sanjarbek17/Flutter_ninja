import 'package:flutter/material.dart';

Widget quotes(String text, String author) {
  return Quote(text: text, author: author);
}

class Quote extends StatelessWidget {
  final String text;
  final String author;
  const Quote({
    required this.text,
    required this.author,
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
}
