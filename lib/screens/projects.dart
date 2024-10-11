import 'package:cs3_portfolio/mobile/my_projects_mobile.dart';
import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return getHomeBuilder(context)(context);
  }
}

WidgetBuilder getHomeBuilder(context) {

  List<Map<String, String>> links = [
    {'name': 'Home', 'link': '/home', 'border': 'false', 'icon': 'home'},
    {'name': 'Projects', 'link': '/projects', 'border': 'false', 'icon': 'wrench'},
    {'name': 'About', 'link': '/about', 'border': 'false', 'icon': 'user'},
    {'name': 'Resume', 'link': '/resume', 'border': 'true', 'icon': 'file'},
  ];

  // Check if the device is a mobile device
  // bool isMobile(BuildContext context) {
  //   return MediaQuery.of(context).size.width < 700;
  // }

  // if (isMobile(context)) {
  //   return (context) => MyProjects(links: links);
  // } else {
  //   return (context) => MyProjectsDesktop(links: links);
  // }

  return (context) => MyProjectsMobile(links: links);
}