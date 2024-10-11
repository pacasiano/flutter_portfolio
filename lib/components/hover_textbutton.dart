import 'package:flutter/material.dart';

class HoverTextButton extends StatefulWidget {
  final Map<String, String> link;

  const HoverTextButton({super.key, required this.link});

  @override
  HoverTextButtonState createState() => HoverTextButtonState();
}

class HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          overlayColor: Colors.transparent,
          side: widget.link['border'] == 'true' ? const BorderSide(
            color: Colors.red,
            width: 1.5,
          ): null,
          shape: widget.link['border'] == 'true' ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ): null,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, widget.link['link']!);
        },
        child: Text(widget.link['name']!, style: TextStyle(
          fontSize: 15,
          fontWeight: _isHovered ? FontWeight.w200 : FontWeight.w100,
        )),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}