import 'package:flutter/material.dart';
import 'package:portfolio/view/info.dart';

class HomeBackGround extends StatefulWidget {
  const HomeBackGround({Key? key}) : super(key: key);

  @override
  State<HomeBackGround> createState() => _HomeBackGroundState();
}

IconData icon = Icons.dark_mode_outlined as IconData;

class Controller extends ChangeNotifier{
  static Controller instance = Controller();


  bool onOff = false;
  activator(){
    onOff = !onOff;
    notifyListeners();
    if(onOff == false){
      icon = Icons.dark_mode_outlined as IconData;
    }else{
      icon = Icons.light_mode_outlined as IconData;
    }
  }
}


ScrollController controller = ScrollController();
teste(){
  print(controller);
}



class _HomeBackGroundState extends State<HomeBackGround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            controller: controller,
            physics: BouncingScrollPhysics(),
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomePage()
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Controller.instance.activator();
          teste();
        },
        child: Icon(icon as IconData),),
    );
  }
}
