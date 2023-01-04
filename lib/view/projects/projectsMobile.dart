import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import '../../controller/generalController.dart';
import '../../model/projectModel.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    List<ProjectsModel> projectsList = [
      ProjectsModel(
          desig: Strings.project1,
          points: Column(
            children: [

            ],
          )),
      ProjectsModel(
          desig: Strings.project2,
          points: Column(
            children: [

            ],
          )),
      ProjectsModel(
          desig: Strings.project3,
          points: Column(
            children: [

            ],
          )),
    ];

    return Container(
      height: AppClass().getMqHeight(context) - 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.project,
                style: GoogleFonts.robotoSlab(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Container(
                height: 0.5,
                margin: EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: textLight,
              )
            ],
          ),
          Consumer(builder: (context, ref, child) {
            var data = ref.watch(selectedExpProvider);
            return Container(
              width: AppClass().getMqWidth(context),
              margin: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            ref.read(selectedExpProvider.notifier).state = 0;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 0
                                    ? cardColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 0
                                            ? primaryColor
                                            : Colors.white,
                                        width: 2))),
                            child: Text(
                              Strings.project1,
                              style: TextStyle(
                                  color: data == 0
                                      ? primaryColor
                                      : textLight,
                                  height: 1.5,
                                  fontSize: 11,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ref.read(selectedExpProvider.notifier).state = 1;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 1
                                    ? cardColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 1
                                            ? primaryColor
                                            : Colors.white,
                                        width: 2))),
                            child: Text(
                            Strings.project2,
                              style: TextStyle(
                                  color: data == 1
                                      ? primaryColor
                                      : textLight,
                                  height: 1.5,
                                  fontSize: 11,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            ref.read(selectedExpProvider.notifier).state = 2;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 2
                                    ? cardColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 2
                                            ? primaryColor
                                            : Colors.white,
                                        width: 2))),
                            child: Text(
                            Strings.project3,
                              style: TextStyle(
                                  color: data == 2
                                      ? primaryColor
                                      : textLight,
                                  height: 1.5,
                                  fontSize: 11,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //TODO refatorar
                        RichText(
                          text: TextSpan(
                              text: projectsList[data].desig,
                              style: GoogleFonts.roboto(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 18),
                              ),
                        ),
                        projectsList[data].points!
                      ],
                    ),
                  )
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
