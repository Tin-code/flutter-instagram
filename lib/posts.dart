import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  Posts({Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo": "Hamed charles",
      "photo": "assets/images/posts/tour-effel.jpg",
      "description":
          "Toujours un plaisir pour moi de revenir dans ce lieu si merveilleux",
      "photoProfil": "assets/images/profile/profile-man-1.webp"
    },
    {
      "pseudo": "Beautifull cars",
      "photo": "assets/images/posts/coupe.jpg",
      "description":
          "La magnifique Bentley Continentale. L'une des plus belles voitures de luxe",
      "photoProfil": "assets/images/profile/bugatti.webp"
    },
    {
      "pseudo": "Maria flower",
      "photo": "assets/images/posts/poppies.jpg",
      "description": "Je vous souhaite une excéllente journée",
      "photoProfil": "assets/images/profile/profile-1.jpg"
    },
    {
      "pseudo": "Tim Shaw",
      "photo": "assets/images/posts/sea.jpg",
      "description":
          "Couché du soleil ou lévé du soleil ? Je vous laisse déviner",
      "photoProfil": "assets/images/profile/power.webp"
    },
    {
      "pseudo": "Miss love",
      "photo": "assets/images/posts/tree.webp",
      "description":
          "Toujours un plaisir pour moi de revenir dans ce lieu si merveilleux",
      "photoProfil": "assets/images/profile/heart.webp"
    },
    {
      "pseudo": "positive vibes",
      "photo": "assets/images/posts/woman.webp",
      "description":
          "Sortez, vivez, prenez de l'air et profitez avant votre heure",
      "photoProfil": "assets/images/profile/social.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post["photoProfil"]),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    post["pseudo"],
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    "assets/images/verified-account.png",
                    height: 13,
                  ),
                  Expanded(child: Container()),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post["photo"]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.send_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Expanded(child: Container()),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Text(post["description"],
                  style: const TextStyle(
                    color: Colors.white,
                  )),
              margin: const EdgeInsets.only(bottom: 30),
            ),
          ],
        );
      }).toList(),
    );
  }
}
