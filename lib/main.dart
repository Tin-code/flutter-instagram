import 'package:flutter/material.dart';
import 'package:instagram/posts.dart';
import 'package:instagram/stories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBar2 = BottomNavigationBar(
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "recherche"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "create a post"),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: "profil"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profil"),
      ],
    );
    return MaterialApp(
      title: "Instagram app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset('assets/images/Instagram-Logo.png',
              height: 60, color: Colors.white),
          elevation: 0,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.favorite, color: Colors.white),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.send, color: Colors.white),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Stories(),
            Posts(),
          ]),
        ),
        bottomNavigationBar: bottomNavigationBar2,
      ),
    ); 
  }
}
