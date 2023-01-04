import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/view/root.dart';

void main() {
  runApp(ProviderScope(child: const AppTheme()));
}

class AppTheme extends StatelessWidget {
  const AppTheme({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Controller.instance,
        builder: (context, child){
      return MaterialApp(
          home: RootScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    accentColor: primaryColor,
    brightness: Controller.instance.onOff ?
    Brightness.dark : Brightness.light
    ));
  }
  );
  }
}
