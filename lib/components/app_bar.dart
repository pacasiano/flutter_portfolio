import 'package:cs3_portfolio/components/hover_textbutton.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Map<String, String>> links;

  const MyAppBar({super.key, required this.links});

  @override
  MyAppBarState createState() => MyAppBarState();

  // Implement the preferredSize getter to specify the height of the AppBar
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
            width: 600,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var link in widget.links)
                  HoverTextButton(link: link),
              ],
            ),
          )
        ],
      ),
    );
  }
}