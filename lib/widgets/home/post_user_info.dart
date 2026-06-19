import 'package:flutter/material.dart';
import '../../constants/app_text_style.dart';

class PostUserInfo extends StatelessWidget {
  const PostUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 18,
          backgroundImage:
              AssetImage('assets/images/girl.jpg'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Nathan Rusl",
              style: AppTextStyles.userName,
            ),
            Text(
              "@nathanrsl",
              style: AppTextStyles.username,
            ),
          ],
        ),
      ],
    );
  }
}






