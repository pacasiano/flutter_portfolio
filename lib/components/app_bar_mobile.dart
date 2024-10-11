import 'package:flutter/material.dart';

class AppBarMobile extends StatefulWidget implements PreferredSizeWidget {
  final List<Map<String, String>> links;

  const AppBarMobile({super.key, required this.links});

  @override
  MyAppBarState createState() => MyAppBarState();

  // Implement the preferredSize getter to specify the height of the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<AppBarMobile> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Text('<', style: TextStyle(fontSize: 20)),
              Text('Home', style: TextStyle(fontFamily: 'WindSong', fontSize: 30)),
              SizedBox(width: 10),
              Text('/>', style: TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }
}