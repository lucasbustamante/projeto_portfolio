import 'package:flutter/material.dart';

import '../view/root.dart';

var primaryColor = const Color(0xff76eeda);
var textColor = const Color(0xffccd6f6);
var textLight = const Color(0xffb3b8c7);
var cardColor = const Color(0xff112240);
var textLight2 = const Color(0xff505050);

String mode = 'dark';

activateColor(){
  //Light
  if(Controller.instance.onOff == false){
    primaryColor = const Color(0xff7C4DFF);
    textColor = const Color(0xff112240);
    textLight = const Color(0xff505050);
    textLight2 = const Color(0xffffffff);

    mode = 'light';


  }//Dark
  else if(Controller.instance.onOff == true){
    primaryColor = const Color(0xff76eeda);
    textColor = const Color(0xffccd6f6);
    textLight = const Color(0xffb3b8c7);
    textLight2 = const Color(0xff282828);

    mode = 'dark';

  }
}


