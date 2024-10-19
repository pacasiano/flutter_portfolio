import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomeDesktop extends StatefulWidget {
  const MyHomeDesktop({super.key});

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
    return SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: SizedBox(
            width: (MediaQuery.of(context).size.width),
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  right: 100,
                  top: 80,
                  child: Transform.translate(
                    offset: const Offset(60, 0),
                    child: SizedBox(
                      width: 450,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Stack(
                          children: [
                            // The actual image
                            const Image(
                              image: AssetImage('assets/images/Subject-5.png'),
                            ),
                            
                            // The shadow gradient that blends the image edges
                            Container(
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7),
                                  ],
                                  center: Alignment.center,
                                  radius:1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 100),
                  padding: isTablet(context)
                      ? const EdgeInsets.only(left: 100)
                      : const EdgeInsets.only(left: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WELCOME TO MY PORTFOLIO!👋',
                          style: TextStyle(
                            fontSize: isTablet(context) ? 25 : 30,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context)
                                .appBarTheme
                                .titleTextStyle!
                                .color,
                          )),
                      SizedBox(height: isTablet(context) ? 25 : 30),
                      Text('PETER',
                          style: TextStyle(
                            fontSize: isTablet(context) ? 50 : 70,
                            fontWeight: FontWeight.w100,
                            color: Theme.of(context)
                                .appBarTheme
                                .titleTextStyle!
                                .color,
                          )),
                      Text('CASIANO',
                          style: TextStyle(
                            fontSize: isTablet(context) ? 50 : 70,
                            height: 0.9,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context)
                                .appBarTheme
                                .titleTextStyle!
                                .color,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: 20,
                              child: Transform.translate(
                                  offset: const Offset(0, 1),
                                  child: const Image(
                                      image: AssetImage(
                                          'assets/images/redflag.png')))),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Flutter Developer',
                              style: TextStyle(
                                fontSize: isTablet(context) ? 15 : 20,
                                fontWeight: FontWeight.w200,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .titleTextStyle!
                                    .color,
                              )),
                        ],
                      ),
                      SizedBox(height: isTablet(context) ? 25 : 30),
                      const SizedBox(
                        width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            ),
                            Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            ),
                            Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                            Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                            ),
                            Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
