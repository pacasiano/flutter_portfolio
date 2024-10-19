import 'package:flutter/material.dart'; // Assuming HoverTextButton is defined here

class AppBarMobile extends StatefulWidget implements PreferredSizeWidget {

  const AppBarMobile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppBarMobileState createState() => _AppBarMobileState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarMobileState extends State<AppBarMobile> {
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