
import 'package:flutter/material.dart';
import 'live_story.dart';

class LiveStoriesSection extends StatelessWidget {
  const LiveStoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        
        separatorBuilder: (context, index) => const SizedBox(width: 4), 
        itemBuilder: (context, index) {
          final items = [
            const LiveStoryCard(
              image: 'assets/images/profile1.jpeg',
              name: 'Robbinsoh',
              isLive: true,
            ),
            const LiveStoryCard(
              image: 'assets/images/profile1.jpeg',
              name: 'Nathan S',
              isPremier: true, 
            ),
            const LiveStoryCard(
              image: 'assets/images/profile1.jpeg',
              name: 'Budiarti',
              isLive: true,
            ),
          ];
          return items[index];
        },
      ),
    );
  }
}

