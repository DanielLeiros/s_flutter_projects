import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Singin\' Time'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage(_settingImage()),
            ),
          ),
          backgroundColor: Color(_settingColor()),
        ),
      ),
    );

String _settingImage() {
  var hour = new DateTime.now();
  String path;
  if (hour.hour > 5 && hour.hour < 18) {
    path = 'images/sunny_days.png';
  } else {
    path = 'images/moonlight_singing.png';
  }
  return path;
}

int _settingColor() {
  var hour = new DateTime.now();
  int color;
  if (hour.hour > 5 && hour.hour < 18) {
    color = 0xffffbd59;
  } else {
    color = 0xff262262;
  }
  return color;
}

//função para retornar widget
// Widget _buildMoment() {
//   Widget child;
//   var hour = new DateTime.now();
//   hour = hour.add(new Duration(hours: 8));
//   if (hour.hour > 5 && hour.hour < 18) {
//     child = Image(
//       image: AssetImage('images/sunny_days.png'),
//     );
//   } else {
//     child = Image(
//       image: AssetImage('images/moonlight_singing.png'),
//     );
//   }
//   return child;
// }
