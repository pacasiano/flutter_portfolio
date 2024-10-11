import 'package:cs3_portfolio/components/app_bar.dart';
import 'package:cs3_portfolio/components/app_bar_mobile.dart';
import 'package:cs3_portfolio/components/drawer_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomeDesktop extends StatefulWidget {
  final List<Map<String, String>> links;
  const MyHomeDesktop({super.key, required this.links});

  @override
  State<MyHomeDesktop> createState() => _MyHomeDesktopState();
}

class _MyHomeDesktopState extends State<MyHomeDesktop> {

  // ismobile function
  bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1000;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isTablet(context) ? AppBarMobile(links: widget.links) : MyAppBar(links: widget.links),
      drawer: isTablet(context) ? DrawerMobile(links: widget.links) : null,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: SizedBox(
            width:  (MediaQuery.of(context).size.width),
            height: MediaQuery.of(context).size.height-56,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Transform.translate(
                    offset: const Offset(60, 0),
                    child: const SizedBox(
                      width: 800,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Image(image: AssetImage('assets/images/mrbean.png')),
                      )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 100),
                  padding: isTablet(context) ? const EdgeInsets.only(left: 100) : const EdgeInsets.only(left: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WELCOME TO MY PORTFOLIO!👋', style: TextStyle(
                        fontSize: isTablet(context) ? 25 : 30,
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                      )),
                      SizedBox(height: isTablet(context) ? 25 : 30),
                      Text('ROWAN', style: TextStyle(
                        fontSize: isTablet(context) ? 50 : 70,
                        fontWeight: FontWeight.w100,
                        color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                      )),
                      Text('ATKINSON', style: TextStyle(
                        fontSize: isTablet(context) ? 50 : 70,
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
                            fontSize: isTablet(context) ? 15 : 20,
                            fontWeight: FontWeight.w200,
                            color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                          )),
                        ],
                      ),
                      SizedBox(height: isTablet(context) ? 25 : 30),
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
              ],
            ),
          ),
        )
      ),
    );
  }
}