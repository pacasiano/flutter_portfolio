import 'package:cs3_portfolio/components/app_bar_mobile.dart';
import 'package:cs3_portfolio/components/drawer_mobile.dart';
import 'package:flutter/material.dart';

class MyProjectsMobile extends StatefulWidget {
  final List<Map<String, String>> links;
  const MyProjectsMobile({super.key, required this.links});

  @override
  State<MyProjectsMobile> createState() => _MyProjectsMobileState();
}

class _MyProjectsMobileState extends State<MyProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMobile(links: widget.links),
      drawer: DrawerMobile(links: widget.links),
      body: const Text('projects mobile'),
    );
  }
}