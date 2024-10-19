import 'package:cs3_portfolio/components/hover_textbutton.dart';
import 'package:flutter/material.dart';


class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Map<String, String>> links;
  final Function(String section) scrollToSection;

  const MyAppBar({super.key, required this.links, required this.scrollToSection});

  @override
  MyAppBarState createState() => MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text('<', style: TextStyle(fontSize: 20)),
              Text('Home', style: TextStyle(fontFamily: 'WindSong', fontSize: 30)),
              SizedBox(width: 10),
              Text('/>', style: TextStyle(fontSize: 20)),
            ],
          ),
          SizedBox(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var link in widget.links)
                  HoverTextButton(
                    link: link,
                    onPressed: () => widget.scrollToSection(link['section']!),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}