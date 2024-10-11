
import 'package:cs3_portfolio/mobile/my_about_mobile.dart';
import 'package:flutter/material.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
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
  //   return (context) => MyAboutMobile(links: links);
  // } else {
  //   return (context) => const Text('hello');
  // }

  return (context) => MyAboutMobile(links: links);
}