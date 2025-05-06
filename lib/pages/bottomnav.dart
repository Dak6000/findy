import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test/pages/home.dart';
import 'package:test/pages/download.dart';
import 'package:test/pages/work.dart';
import 'package:test/pages/mentors.dart';
import 'package:test/pages/settings.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 2; // Index initial au centre (Home)

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      Download(),
      Work(),
      Home(),
      Mentors(),
      Settings(),
    ];

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: currentTabIndex, // Définit l'index initial au lancement
        height: 50,
        backgroundColor: Colors.white,
        color: const Color(0xffff734c),
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(Icons.download_outlined, color: Colors.white, size: 30.0),
          Icon(Icons.work_history_outlined, color: Colors.white, size: 30.0),
          Icon(Icons.home_outlined, color: Colors.white, size: 30.0),
          Icon(Icons.person_outline, color: Colors.white, size: 30.0),
          Icon(Icons.settings_outlined, color: Colors.white, size: 30.0),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}