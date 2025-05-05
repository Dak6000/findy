import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 120.0),
          Center(
            child: Image.asset(
              "images/mentor_1.png",
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            "Bienvenue sur LuxBags",
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              "Ces extensions transforment Cursor en un IDE Flutter ultra-performant, combinant productivité et expérience développeur premium",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 130.0),
          Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Color(0xffff734c),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
