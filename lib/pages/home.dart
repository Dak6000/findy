import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 35.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "images/mentor_2.png",
                        height: 50.0,
                        width: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                "Chosir son Sac",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Livraison!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                height: 80.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 80.0,
                      margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      decoration: BoxDecoration(
                        color: Color(0xffff734c),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      width: 180,
                      padding: EdgeInsets.all(10),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/hotel_1.jpg",
                                height: 30.0,
                                width: 30.0,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Sac au Dos",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      padding: EdgeInsets.all(10),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/hotel_2.jpg",
                                height: 30.0,
                                width: 30.0,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Sac à main",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      padding: EdgeInsets.all(10),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/hotel_3.jpg",
                                height: 30.0,
                                width: 30.0,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Pour Dame",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      padding: EdgeInsets.all(10),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/hotel_2.jpg",
                                height: 30.0,
                                width: 30.0,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                "Voyage",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(width: 10.0),
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0, right: 20.0),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/hotel_1.jpg",
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Sac au Dos",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Eleves et Fonctionnaires",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Text(
                                    "8000F",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 90.0),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffff734c),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/hotel_2.jpg",
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Sac à main",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Filles et Dames",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Text(
                                    "6000F",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 90.0),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffff734c),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                "Autre catégorie",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(width: 10.0),
                    Container(
                      padding: EdgeInsets.only(bottom: 10.0, right: 20.0),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/hotel_1.jpg",
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Sac au Dos",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Eleves et Fonctionnaires",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Text(
                                    "8000F",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 90.0),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffff734c),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/hotel_2.jpg",
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Sac à main",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Filles et Dames",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Text(
                                    "6000F",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 90.0),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xffff734c),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
