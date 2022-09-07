import 'package:flutter/material.dart';

class StoryColumnWidget extends StatelessWidget {
  final String storyOwnerName;
  final String storyOwnerAvatar;
  const StoryColumnWidget({
    Key? key,
    required this.storyOwnerName,
    required this.storyOwnerAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 30,
          backgroundImage: AssetImage(storyOwnerAvatar),
        ),
        Text(
          storyOwnerName,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
