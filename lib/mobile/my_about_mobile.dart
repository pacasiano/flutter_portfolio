import 'package:cs3_portfolio/components/app_bar_mobile.dart';
import 'package:cs3_portfolio/components/drawer_mobile.dart';
import 'package:flutter/material.dart';

class MyAboutMobile extends StatefulWidget {
  final List<Map<String, String>> links;
  const MyAboutMobile({super.key, required this.links});

  @override
  State<MyAboutMobile> createState() => _MyAboutMobileState();
}

class _MyAboutMobileState extends State<MyAboutMobile> {

  final String description = "I am currently a student of Computer Science as Majors in Ateneo de Davao University, Davao City. I have been developing mobile apps for over 2 months";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMobile(links: widget.links),
      drawer: DrawerMobile(links: widget.links),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('get to know me :)'),
              const SizedBox(height: 50),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Who am i?', style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(182, 60, 49, 1),
                      fontWeight: FontWeight.w600,
                    ),),
                    const SizedBox(height: 15),
                    const Text('Im Peter Casiano, a Flutter Developer, Web Developer, and UI/UX Designer', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                    const SizedBox(height: 15),
                    Text(description),
                    const SizedBox(height: 15),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 71, 71, 71),
                    ),
                    const SizedBox(height: 15),
                    const Center(
                      child: Column(
                        children: [
                          Text('Technologies I have worked with:', style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(216, 66, 52, 1),
                            fontWeight: FontWeight.w600,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MySmallArrowName(name: 'Flutter'),
                              SizedBox(width: 10),
                              MySmallArrowName(name: 'Dart'),
                              SizedBox(width: 10),
                              MySmallArrowName(name: 'Python'),
                              SizedBox(width: 10),
                              MySmallArrowName(name: 'C++'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 71, 71, 71),
                    ),
                    const SizedBox(height: 15),
                    const Column(
                      children: [
                        MyTitleWithName(title: 'Name', name: 'Peter Casiano'),
                        SizedBox(height: 10),
                        MyTitleWithName(title: 'Email', name: 'pacasiano'),
                        SizedBox(height: 10),
                        MyTitleWithName(title: 'Age', name: '+639123456789'),
                        SizedBox(height: 10),
                        MyTitleWithName(title: 'Address', name: 'Davao City, Philippines')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySmallArrowName extends StatelessWidget {
  final String name;
  const MySmallArrowName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          child: Transform.translate(
            offset: const Offset(0, 1),
            child: const Image(image: AssetImage('assets/images/redflag.png'))
          )
        ),
        const SizedBox(width: 5),
        Text(name, style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold
        )),
      ],
    );
  }
}

class MyTitleWithName extends StatelessWidget {
  final String title;
  final String name;
  const MyTitleWithName({super.key, required this.title, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title:', style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),),
        const SizedBox(width: 5),
        Text(name, style: const TextStyle(
          fontSize: 15,
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.normal
        ),),
      ],
    );
  }
}