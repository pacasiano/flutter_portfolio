import 'package:cs3_portfolio/components/app_bar.dart';
import 'package:cs3_portfolio/components/app_bar_mobile.dart';
import 'package:cs3_portfolio/components/drawer_mobile.dart';
import 'package:cs3_portfolio/desktop/my_about_desktop.dart';
import 'package:cs3_portfolio/desktop/my_home_desktop.dart';
import 'package:cs3_portfolio/desktop/my_projects_desktop.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  List<Map<String, String>> links = [
  {'name': 'Home', 'section': 'home', 'border': 'false', 'icon': 'home'},
  {'name': 'Projects', 'section': 'projects', 'border': 'false', 'icon': 'wrench'},
  {'name': 'About', 'section': 'about', 'border': 'false', 'icon': 'user'},
];

  final ScrollController _scrollController = ScrollController();
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

   // ismobile function
  bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1000;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: isTablet(context)
        ? const AppBarMobile()
        : MyAppBar(
          links: links,
          scrollToSection: scrollToThis,
        ),
      drawer: isTablet(context) ? DrawerMobile(
        links: links,
        scrollToSection: scrollToThis, 
        ) : null,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              MyHomeDesktop(key: homeKey),
              MyProjectsDesktop(key: projectsKey),
              MyAboutDesktop(key: aboutKey),
            ],
          ),
        ),
      ),
    );
  }

  scrollToThis(String section) {
    switch (section) {
      case 'home':
        scrollToSection(homeKey);
        break;
      case 'about':
        scrollToSection(aboutKey);
        break;
      case 'projects':
        scrollToSection(projectsKey);
        break;
      default:
        break;
    }
  }
}

  