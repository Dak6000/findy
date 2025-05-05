import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test/pages/booking.dart';
import 'package:test/pages/cart.dart';
import 'package:test/pages/home.dart';
import 'package:test/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;
  late List<Widget> pages;

  late Widget currentPage;
  late Home home;
  late Booking booking;
  late Profile profile;
  late Cart cart;

  @override
  void initState() {
    home = Home();
    booking = Booking();
    profile = Profile();
    cart = Cart();
    pages = [home, cart, booking, profile];
    currentPage = Home();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white, size: 30.0,),
          Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 30.0,),
          Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 30.0,),
          Icon(Icons.person_outline, color: Colors.white, size: 30.0,),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
