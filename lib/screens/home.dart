import 'package:cs3_portfolio/desktop/my_home_desktop.dart';
import 'package:cs3_portfolio/mobile/my_home_mobile.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
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
  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 700;
  }

  if (isMobile(context)) {
    return (context) => MyHomeMobile(links: links);
  } else {
    return (context) => MyHomeDesktop(links: links);
  }
}