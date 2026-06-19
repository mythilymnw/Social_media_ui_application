import 'package:flutter/material.dart';
import '../home/post_actions.dart';
import '../home/post_user_info.dart';

class TrendingPostCard extends StatelessWidget {
  const TrendingPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/profile1.jpeg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 14,
            right: 14,
            bottom: 16,
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.end,
              children: [
                const Expanded(
                  child: PostUserInfo(),
                ),
                const PostActions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}