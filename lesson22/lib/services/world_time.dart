import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time = 'Could not get time data';
  String flag;
  String url;
  bool isDaytime = true;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getData() async {
    try {
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
      isDaytime = now.hour >= 6 && now.hour <= 18 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("catch error: $e");
    }
  }
}
