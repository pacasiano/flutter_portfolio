import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerButton extends StatefulWidget {
  final Map<String, String> data;
  final VoidCallback onPressed;

  const DrawerButton({super.key, required this.data, required this.onPressed});

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  bool _isHovered = false;

  // Utility to map string values to IconData
  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'home':
        return FontAwesomeIcons.house;  // FA version of home
      case 'user':
        return FontAwesomeIcons.user;
      case 'briefcase':
        return FontAwesomeIcons.briefcase;
      case 'wrench':
        return FontAwesomeIcons.wrench;
      case 'envelope':
        return FontAwesomeIcons.envelope;
      case 'file':
        return FontAwesomeIcons.file;
      default:
        return FontAwesomeIcons.question; // Default icon if name doesn't match
    }
  }


  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        color: _isHovered
            ? const Color.fromRGBO(192, 57, 44, 0.3)
            : const Color.fromRGBO(33, 33, 33, 1),
        child: ListTile(
          leading: Icon(
            _getIconData(widget.data['icon'] ?? 'help'),  // Dynamically set the icon
            size: 20,
          ),
          title: SizedBox(
            child: Row(
              children: [
                Text(widget.data['name'] ?? 'Unknown'),
              ],
            ),
          ),
          onTap: widget.onPressed,
        ),
      ),
    );
  }
}