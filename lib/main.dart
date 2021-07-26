import 'package:ayu_web/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

void main() {
  runApp(MyApp());
  var audioElement = new AudioElement();
  audioElement.src = "https://e.top4top.io/m_2032whecr1.mp3";
  document.body!.append(audioElement);
  audioElement.play();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
