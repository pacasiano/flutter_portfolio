import 'package:flutter/material.dart';
import 'package:cs3_portfolio/components/drawer_button.dart' as custom;

class DrawerMobile extends StatefulWidget {
  final List<Map<String, String>> links;
  final Function(String section) scrollToSection;

  const DrawerMobile({super.key, required this.links, required this.scrollToSection});

  @override
  State<DrawerMobile> createState() => _DrawerMobileState();
}

class _DrawerMobileState extends State<DrawerMobile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 70,
              child: Transform.translate(
                offset: const Offset(0,10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('<', style: TextStyle(fontSize: 20)),
                    Text('Home', style: TextStyle(fontFamily: 'WindSong', fontSize: 30)),
                    SizedBox(width: 10),
                    Text('/>', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                children: [
                  for (var link in widget.links)
                    custom.DrawerButton(data: link, onPressed: () => widget.scrollToSection(link['section']!),),
                    
                ],
              ),
            ),
          ],
        ),
      );
  }
}