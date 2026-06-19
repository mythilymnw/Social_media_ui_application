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
            image: 'assets/images/story1.jpg',
            name: 'Brian S',
          ),
          StoryAvatar(
            image: 'assets/images/story2.jpg',
            name: 'Jennie',
          ),
          StoryAvatar(
            image: 'assets/images/story3.jpg',
            name: 'James',
          ),
          StoryAvatar(
            image: 'assets/images/story4.jpg',
            name: 'Roés',
          ),
        ],
      ),
    );
  }
}










