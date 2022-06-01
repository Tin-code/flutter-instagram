import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  Stories({Key? key}) : super(key: key);

  final List storyItems = [
    {"pseudo": "Lefaauthentique", "photo": "assets/images/photos/lefa.jpg"},
    {"pseudo": "Ninho", "photo": "assets/images/photos/ninho.jpg"},
    {"pseudo": "Dadju", "photo": "assets/images/photos/dadju.jpg"},
    {"pseudo": "Damso", "photo": "assets/images/photos/damso.jpg"},
    {"pseudo": "Koba La D", "photo": "assets/images/photos/koba.jpg"},
    {"pseudo": "Gims", "photo": "assets/images/photos/gims.jpg"},
    {"pseudo": "Niska", "photo": "assets/images/photos/niska.jpg"},
    {"pseudo": "Marion02", "photo": "assets/images/photos/bouffe.jpg"},
    {"pseudo": "Greg Guillotin", "photo": "assets/images/photos/cafe.jpg"},
    {"pseudo": "Sexion d'Assaut", "photo": "assets/images/photos/sexion.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/story-circle.png",
                      height: 70,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(story["photo"]),
                      radius: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  story["pseudo"],
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                  maxLines: 1,
                ),
              ],
            ),
            margin: const EdgeInsets.symmetric(horizontal: 5),
          );
        }).toList(),
      ),
    );
  }
}
