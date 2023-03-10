import 'package:flutter/material.dart';

import '../model/const.dart';

class Infos extends StatefulWidget {
  const Infos({Key? key}) : super(key: key);

  @override
  State<Infos> createState() => _InfosState();
}

class _InfosState extends State<Infos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Smart Badge',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                      color: Colors.black
                ),),
                SizedBox(height: 50),
                Text(info,
                  textAlign: TextAlign.center,
                  style: TextStyle(letterSpacing: 1,
                    wordSpacing: 3,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    height: 1.50,
                      color: Colors.black
                  ),)
              ],
            ),
          ),
        ),
      )
    );
  }
}
