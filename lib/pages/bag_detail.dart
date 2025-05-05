import 'package:flutter/material.dart';

class BagDetail extends StatefulWidget {
  const BagDetail({super.key});

  @override
  State<BagDetail> createState() => _BagDetailState();
}

class _BagDetailState extends State<BagDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            Image.asset(
              "images/hotel_1.jpg",
              height: 270,
              width: 270,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sac au Dos",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffff734c),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.remove, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              "Note : Ce texte est optimisé pour un site e-commerce (SEO-friendly avec mots-clés comme sac véganbandoulière ajustable Modifiable selon l'identité de votre marque.",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              padding: EdgeInsets.only(left: 20.0, right: 10.0, top: 20.0, bottom: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffff734c),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Prix Total",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "8000f",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Ajouter au panier",
                        style: TextStyle(
                          color: Color(0xffff734c),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
