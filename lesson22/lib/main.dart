import 'package:flutter/material.dart';
import 'package:lesson22/pages/home.dart';
import 'package:lesson22/pages/choose_location.dart';
import 'package:lesson22/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const Location(),
    },
  ));
}
