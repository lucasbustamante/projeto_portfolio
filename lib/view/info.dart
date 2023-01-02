import 'package:flutter/material.dart';
import 'package:portfolio/view/photo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oi, meu nome é ', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 30
                      ),),
                      Text('Lucas Bustamante', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 40
                      ),),

                    ],
                  ),
                  Photo(),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oi, meu nome é ', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 30
                      ),),
                      Text('Lucas Bustamante', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 40
                      ),),

                    ],
                  ),
                  Photo(),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oi, meu nome é ', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 30
                      ),),
                      Text('Lucas Bustamante', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 40
                      ),),

                    ],
                  ),
                  Photo(),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oi, meu nome é ', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 30
                      ),),
                      Text('Lucas Bustamante', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 40
                      ),),

                    ],
                  ),
                  Photo(),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oi, meu nome é ', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 30
                      ),),
                      Text('Lucas Bustamante', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 40
                      ),),

                    ],
                  ),
                  Photo(),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oi, meu nome é ', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 30
                      ),),
                      Text('Lucas Bustamante', style: TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 40
                      ),),

                    ],
                  ),
                  Photo(),
                ],
              ),
            ]
        ),
      ),
    );
  }
}