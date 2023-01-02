import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/colors.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 6,
                color: kPrimaryColor)
        ),
        child: Stack(
          children: [
            //Foto de perfil
            Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/1.jpg")
                  )
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2,
                      color: kPrimaryColor)
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Lottie.asset('images/hi.json'),
              ),
            ),
          ],
        )
    );
  }
}
