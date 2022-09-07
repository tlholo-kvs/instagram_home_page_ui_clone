import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              )),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_file,
                color: Colors.black,
              ),
            ),
            label: 'Reels'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_box_rounded,
                  color: Colors.black,
                )),
            label: 'Add'),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {},
              child: const ImageIcon(
                AssetImage('assets/images/instagram-shop-4941673-4109073.webp'),
                color: Colors.black,
              ),
            ),
            label: 'Shopping'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
            ),
            label: 'Profile'),
      ],
    );
  }
}
