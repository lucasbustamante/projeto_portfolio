import 'package:flutter/material.dart';
import 'apps/Clone Nubank/screens/gif_animation.dart';
import 'apps/Clone Nubank/screens/home_page.dart';

class Teste extends StatefulWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Center(child: HomePage()),
            Center(child: Image.asset('assets/images/cell.png'))
          ]
        ),
      ),


    );
  }
}
