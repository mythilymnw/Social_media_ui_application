import 'package:flutter/material.dart';
class ProfileStats extends StatelessWidget {
  final String label;
  final String count;
  const ProfileStats({super.key, required this.label, required this.count});
@override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold, 
            color: Colors.black,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13, 
            color: Color(0xFF9E9E9E), 
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
class StatDivider extends StatelessWidget {
  const StatDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 18, color: const Color(0xFFE0E0E0));
  }
}







