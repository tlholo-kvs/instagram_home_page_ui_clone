import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/stories_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          //The topmost row on the page
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              children: [
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage('assets/images/ig_dm_icon.png'),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //The Row that will display stories
          Row(children: const [
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 8),
              child: StoryColumnWidget(
                storyOwnerAvatar:
                    'assets/images/portrait-polar-bear-mirror-sunglasses-hand-drawn.jpg',
                storyOwnerName: 'frostybear',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2),
              child: StoryColumnWidget(
                storyOwnerAvatar:
                    'assets/images/animated-wolf-motorcycle-art.jpg',
                storyOwnerName: 'biker_wolf',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2),
              child: StoryColumnWidget(
                storyOwnerAvatar: 'assets/images/penguins-of-madagascar.jpg',
                storyOwnerName: 'da_penguins',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.0, right: 2),
              child: StoryColumnWidget(
                storyOwnerAvatar: 'assets/images/joseph-prince-of-egypt.jpg',
                storyOwnerName: 'prince_jo',
              ),
            ),
          ]),
          const SizedBox(height: 2),
          const Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
          Expanded(
            child: ListView(
              children: const [],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNav(),
    );
  }
}
