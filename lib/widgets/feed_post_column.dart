import 'package:flutter/material.dart';

class FeedPostColumn extends StatelessWidget {
  final String assetName;
  final String usernameText;
  final String datePosted;
  const FeedPostColumn(
      {Key? key,
      required this.assetName,
      required this.usernameText,
      required this.datePosted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: CircleAvatar(
                  maxRadius: 5,
                ),
              ),
              Text(usernameText),
              Padding(
                padding: const EdgeInsets.only(left: 180.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                      AssetImage('assets/images/3-dots-menu-vert.png')),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetName),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 12),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.comment)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage('assets/images/ig_dm_icon.png'),
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180.0),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
              ),
            ],
          ),
        ),
        const Text('Liked by 1234_bears and others'),
        Text(
          datePosted,
          style: const TextStyle(fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}
