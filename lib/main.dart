import 'package:cs3_portfolio/screens/about.dart';
import 'package:cs3_portfolio/screens/home.dart';
import 'package:cs3_portfolio/screens/projects.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}   

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CS3 Portfolio',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromRGBO(33, 33, 33, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
        ),
        listTileTheme: const ListTileThemeData(
          tileColor: Color.fromRGBO(33, 33, 33, 1),
          iconColor: Color.fromRGBO(192, 57, 44, 1),
          selectedColor: Color.fromRGBO(192, 57, 44, 0.3),
          textColor: Colors.white,
        )
      ),
      home: const MyHome(),
      routes: {
        '/home': (context) => const MyHome(),
        '/projects': (context) => const MyProjects(),
        '/about': (context) => const MyAbout(),
      },
    );
  }
}
