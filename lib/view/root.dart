import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/view/about/about.dart';
import 'package:portfolio/view/intro/intro.dart';
import 'package:portfolio/view/projects/project.dart';
import 'package:portfolio/view/widget/appBar.dart';
import 'package:portfolio/view/widget/leftPane.dart';
import 'package:portfolio/view/widget/rightPane.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'contact/contact.dart';

class RootScreen extends ConsumerStatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

IconData icon = icon = Icons.light_mode_outlined as IconData;

class Controller extends ChangeNotifier{
  static Controller instance = Controller();


  bool onOff = true;
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

class _RootScreenState extends ConsumerState<RootScreen> {
  final aScrollController = AutoScrollController();

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
            //TODO refatorar
        /*NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              ref.read(scrollControlProvider.notifier).state = false;
            } else if (direction == ScrollDirection.forward) {
              ref.read(scrollControlProvider.notifier).state = true;
            }
            return true;
          },
          child: */Container(
            height: AppClass().getMqHeight(context),
            child: Column(
              children: [
                Consumer(builder: (context, ref, child) {
                  var isScrollingUp = ref.watch(scrollControlProvider);
                  return AnimatedOpacity(
                    opacity: isScrollingUp ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: ActionBar(aScrollController),
                  );
                }),
                Expanded(
                  child: () {
                    ScreenType scrType = AppClass().getScreenType(context);
                    return Row(
                      children: [
                        scrType == ScreenType.mobile ? SizedBox() : LeftPane(),
                        Expanded(
                            flex: 8,
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              controller: aScrollController,
                              children: [
                                AutoScrollTag(
                                    key: ValueKey(0),
                                    controller: aScrollController,
                                    index: 0,
                                    child: IntroContent(aScrollController)),
                                AutoScrollTag(
                                    key: ValueKey(1),
                                    controller: aScrollController,
                                    index: 1,
                                    child: About()),
                                AutoScrollTag(
                                    key: ValueKey(2),
                                    controller: aScrollController,
                                    index: 2,
                                    child: Project()),
                                AutoScrollTag(
                                    key: ValueKey(3),
                                    controller: aScrollController,
                                    index: 3,
                                    child: Contact())
                              ],
                            )),
                        scrType == ScreenType.mobile ? SizedBox() : RightPane(),
                      ],
                    );
                  }(),
                ),
              ],
            ),
          ),
        //),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
           setState(() {
             Controller.instance.activator();
             activateColor();
           });
          },
          child: Icon(icon as IconData),),
      ),
    );
  }
}
