import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time = 'None';
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getData() async {
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    // ignore: avoid_print
    Map data = jsonDecode(response.body);
    // ignore: avoid_print
    // print(data['datetime']);
    // print(data['utc_offset']);
    DateTime now = DateTime.parse(data['datetime']);
    String offset = data['utc_offset'].substring(1, 3);
    now = now.add(Duration(hours: int.parse(offset)));
    time = now.toString();
  }
}
