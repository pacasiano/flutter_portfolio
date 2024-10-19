// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Project {
  final String title;
  final String description;
  final String image;
  final String link;

  Project({
    required this.title,
    required this.description,
    required this.image,
    required this.link,
  });
}

class MyProjectsDesktop extends StatefulWidget {
  const MyProjectsDesktop({super.key});

  @override
  State<MyProjectsDesktop> createState() => _MyProjectsDesktopState();
}

class _MyProjectsDesktopState extends State<MyProjectsDesktop> {
  final List<Project> projects = [
    Project(
      title: "Workwize",
      description: "A platform for Task Management",
      image: 'assets/images/workwize.png', // Update with your image path
      link: "https://github.com/pacasiano/FullStack",
    ),
    Project(
      title: "AC7",
      description: "E-commerce website for a beauty brand",
      image: 'assets/images/ac7.png', // Update with your image path
      link: "https://github.com/pacasiano/AC7",
    ),
    Project(
      title: "Uni PASS",
      description: "A Parking Management System for Ateneo de Davao University",
      image: 'assets/images/unipass.png', // Update with your image path
      link: "https://unipass.arisenlab.org/login",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: ExpandableCarousel(
          options: ExpandableCarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.easeInOut,
          ),
          items: projects.map((project) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    // Handle link tap, e.g., open in a web browser
                    // You can use url_launcher package here
                  },
                  child: Container(
                    height: 500,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Stack(
                      children: [
                        Image.asset(
                          project.image,
                          height: 500,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 600,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),  // Dark overlay, adjust opacity as needed
                          ),
                        ),
                        Positioned(
                          left: 50,
                          bottom: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  project.title,
                                  style: const TextStyle(
                                    fontFamily: 'WindSong',
                                    fontSize: 40, // Increased font size for title
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 238, 238, 238), // Changed text color to white
                                  ),
                                ),
                              ), // Add spacing
                              SizedBox(
                                child: Text(
                                  project.description,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 15, // Increased font size for description
                                    color: Color.fromARGB(255, 228, 228, 228), // Changed text color to white
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}