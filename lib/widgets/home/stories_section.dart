import 'package:flutter/material.dart';
import 'story_avatar.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          StoryAvatar(
            image: '',
            name: 'Add story',
            isAddStory: true,
          ),
          StoryAvatar(
            image: 'assets/images/story_image1.jpeg',
            name: 'Brian S',
          ),
          StoryAvatar(
            image: 'assets/images/girl.jpg',
            name: 'Jennie',
          ),
          StoryAvatar(
            image: 'assets/images/background_image.webp',
            name: 'James',
          ),
          StoryAvatar(
            image: 'assets/images/profile1.jpeg',
            name: 'Roés',
          ),
        ],
      ),
    );
  }
}










