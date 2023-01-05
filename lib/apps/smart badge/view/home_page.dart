import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/const.dart';
import '../model/secondary_page.dart';
import 'infos.dart';

class HomeSmartBadge extends StatefulWidget {
  const HomeSmartBadge({Key? key}) : super(key: key);

  @override
  State<HomeSmartBadge> createState() => _HomePageState();
}

class _HomePageState extends State<HomeSmartBadge> {

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerFuncao = TextEditingController();


//deixar o app em fullscreen
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.leanBack,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  initState() {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>SecondaryPage()));
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        //Container para definir background da hone
          body: Container(
            /*decoration: BoxDecoration(
            gradient: LinearGradient(

                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Color(0xff7A0BB435), ],
                stops: [
                  0.6 , 10
                ]
            )
          ),*/
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    Container(
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
                                      image: AssetImage("assets/images/apps/1.jpg")
                                  )
                              ),
                            ),
                            Column(
                              children: [

                                //Trocar icone de tecnologia principal
                                GestureDetector(
                                  onLongPress: () {

                                  },
                                  child: Container(
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
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/apps/flutter.png")
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    //Text de Nome
                Text(name, style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  color: Colors.black
                ),),
                    SizedBox(
                      height: 5,
                    ),
                    //Text de função
                  Text(funcao, style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25,
                      color: Colors.black
                  ),),
                    SizedBox(height: 80),
                    Image.asset("assets/images/apps/logo.png",
                      height: 150,)
                  ],
                ),
                  Infos()
              ]
              ),
            ),
          )
      ),
    );
  }
}
