import 'package:flutter/material.dart';
import '../../constants/app_text_style.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nature's beauty is the best remedy for a restless soul. 🌿🤍 #FindYourPeace",
      maxLines: 2,
      style: AppTextStyles.description,
    );
  }
}





