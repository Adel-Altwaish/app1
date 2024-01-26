// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;

  const ImageContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: Color.fromARGB(255, 55, 72, 140),
          width: 13,
        ),
      ),
      width: 400,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 109, 170, 223),
        title: TextField(
          cursorColor: Color.fromARGB(255, 255, 255, 255),
          decoration: InputDecoration(
            hintText: 'البحث',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    width: 400,
                    height: 90,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      ' من نحن؟ ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ImageContainer(imagePath: 'assets/1.jpg'),
                  ImageContainer(imagePath: 'assets/3.jpg'),
                  ImageContainer(imagePath: 'assets/5.jpg'),
                  ImageContainer(imagePath: 'assets/6.png'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
