import 'package:flutter/material.dart';

import 'apps/bmi/main.dart';

class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {

  @override
  Widget build(BuildContext context) {

    double vertical = MediaQuery.of(context).size.width *0.08;
    double horizontal = MediaQuery.of(context).size.height * 0.7;

    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: vertical),
        child: MyApp(),
      ),


    );
  }
}
