// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:producttable/normal_pricing.dart';
import 'package:producttable/premium_pricing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 38, 44, 1),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(27, 38, 44, 1),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FLUTTURA",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: 50),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Fluttura is a online platform to watch movies online and also user can dowmload  them for offline viewing.\n For to use this app user needs to purchase any role.Fluttura offers NORMAL and PREMIUM options for users.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NormalPriceTagScreen(),
                  ),
                );
              },
              child: Text("Purchase Normal"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PremiumScreen(),
                  ),
                );
              },
              child: Text("Purchase Premium"),
            ),
          ],
        ),
      ),
    );
  }
}
