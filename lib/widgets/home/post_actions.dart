import 'package:flutter/material.dart';

class PostActions extends StatelessWidget {
  const PostActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.favorite,
            color: Colors.red, size: 22),
        SizedBox(height: 4),
        Text(
          "12.3k",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 18),

        Icon(Icons.share_outlined,
            color: Colors.white, size: 20),
        SizedBox(height: 4),
        Text(
          "250",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 18),

        Icon(Icons.chat_bubble_outline,
            color: Colors.white, size: 20),
        SizedBox(height: 4),
        Text(
          "100",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}





