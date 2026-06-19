import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String profileImage;

  const CustomAppBar({
    super.key,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(profileImage),
        ),

        const Spacer(),

        Container(
          height: 42,
          width: 42,
          decoration: const BoxDecoration(
            color: Color(0xFFF8F8F8),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.notifications_none,
            color: Colors.black,
            size: 22,
          ),
        ),
      ],
    );
  }
}




