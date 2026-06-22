

import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  final String label;
  final String count;

  const ProfileStats({
    super.key,
    required this.label,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600, 
            color: Colors.black,
            letterSpacing: -0.3,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF8E8E93), 
            fontWeight: FontWeight.w400, 
          ),
        ),
      ],
    );
  }
}

//divider line
class StatDivider extends StatelessWidget {
  const StatDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25, 
      width: 2,
      color: Colors.black.withOpacity(0.08), 
    );
  }
}



