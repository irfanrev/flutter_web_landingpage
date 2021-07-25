import 'package:ayu_web/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

void main() {
  runApp(MyApp());
  var audioElement = new AudioElement();
  // audioElement.src =
  //     "https://firebasestorage.googleapis.com/v0/b/flutter-task-feae2.appspot.com/o/music.mp3?alt=media&token=80f4ab90-cfa1-46ae-91aa-fcabf0972505";
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
