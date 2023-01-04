import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/view/projects/projectsTab.dart';
import 'projectsMobile.dart';
import 'projectsWeb.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      webView: ProjectsWeb(),
      mobileView: ProjectsMobile(),
      tabView: ProjectsTab(),
    );
  }
}
