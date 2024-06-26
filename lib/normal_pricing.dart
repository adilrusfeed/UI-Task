// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NormalPriceTagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 38, 44, 1),
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.amber),
        title: Text(
          'Normal',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(27, 38, 44, 1),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(27, 38, 44, 1),
              ),
              child: Column(
                children: [
                  Text(
                    'FLUTTURA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Normal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Lottie.asset("assets/Animation - 1713422464957.json"),
            ListTile(
              title: Text('About Normal Purchase'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Benefits of Normal Purchase'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1B262C), Color(0xFF0F4C75)],
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Plans and Features of Normal Purchase',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            buildPriceCircle(),
            SizedBox(height: 30),
            buildFeaturesList(),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(20),
                  shadowColor: MaterialStatePropertyAll(Colors.amber)),
              onPressed: () {},
              child: Text('START NOW'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPriceCircle() {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$59',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '/month',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeaturesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildFeatureItem('Slow speed'),
        buildFeatureItem('Limited downloads'),
        buildFeatureItem('Advertisements'),
        buildFeatureItem('No support'),
        buildFeatureItem('10 GB storage'),
      ],
    );
  }

  Widget buildFeatureItem(String feature) {
    return Row(
      children: [
        Icon(
          Icons.check,
          color: Colors.green,
        ),
        SizedBox(width: 10.0),
        Text(
          feature,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
