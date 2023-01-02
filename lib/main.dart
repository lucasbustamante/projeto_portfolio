import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/view/home.dart';

void main(){
  runApp(AnimatedBuilder(
    animation: Controller.instance,
      builder: (context, child){
      return MaterialApp(
        home: HomeBackGround(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: kPrimaryColor,
          brightness: Controller.instance.onOff ?
              Brightness.dark : Brightness.light
        ),
      );
      },
  ));
}

