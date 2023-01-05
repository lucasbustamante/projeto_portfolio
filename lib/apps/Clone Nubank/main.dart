import 'package:flutter/material.dart';
import 'package:portfolio/apps/Clone%20Nubank/screens/gif_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GifAnimation(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }
}
