import 'package:cs3_portfolio/components/app_bar_mobile.dart';
import 'package:cs3_portfolio/components/drawer_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomeMobile extends StatefulWidget {
  final List<Map<String, String>> links;
  const MyHomeMobile({super.key, required this.links});

  @override
  State<MyHomeMobile> createState() => _MyHomeMobileState();
}

class _MyHomeMobileState extends State<MyHomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMobile(links: widget.links),
      drawer: DrawerMobile(links: widget.links),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Transform.translate(
                offset: const Offset(130, 0),
                child: const SizedBox(
                  width: 550,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Image(image: AssetImage('assets/images/mrbean.png')),
                  )
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WELCOME TO MY PORTFOLIO!👋', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                    )),
                    const SizedBox(height: 30),
                    Text('ROWAN', style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w100,
                      color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                    )),
                    Text('ATKINSON', style: TextStyle(
                      fontSize: 40,
                      height: 0.9,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                    )),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          child: Transform.translate(
                            offset: const Offset(0, 1),
                            child: const Image(image: AssetImage('assets/images/redflag.png'))
                          )
                        ),
                        const SizedBox(width: 10,),
                        Text('Flutter Developer', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                        )),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(FontAwesomeIcons.facebook, color: Colors.white,),
                          Icon(FontAwesomeIcons.instagram, color: Colors.white,),
                          Icon(FontAwesomeIcons.twitter, color: Colors.white,),
                          Icon(FontAwesomeIcons.linkedin, color: Colors.white,),
                          Icon(FontAwesomeIcons.github, color: Colors.white,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}