import 'package:flutter/material.dart';
import 'live_story.dart';

class LiveStoriesSection extends StatelessWidget {
  const LiveStoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          LiveStoryCard(
            image: 'assets/images/profile1.jpeg',
            name: 'Robbinsoh',
            isLive: true,
          ),

          LiveStoryCard(
            image: 'assets/images/profile1.jpeg',
            name: 'Nathan S',
            isPremier: true, 
          ),

          LiveStoryCard(
            image: 'assets/images/profile1.jpeg',
            name: 'Budiarti',
            isLive: true,
          ),
        ],
      ),
    );
  }
}



