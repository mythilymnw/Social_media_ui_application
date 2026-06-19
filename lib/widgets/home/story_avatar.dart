import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_style.dart';

class StoryAvatar extends StatelessWidget {
  final String image;
  final String name;
  final bool isAddStory;

  const StoryAvatar({
    super.key,
    required this.image,
    required this.name,
    this.isAddStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          isAddStory
              ? Container(
                  width: 58,
                  height: 58,
                  decoration: const BoxDecoration(
                    color: AppColors.lightOrange,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.primary,
                    size: 28,
                  ),
                )
              : Container(
                  width: 58,
                  height: 58,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.primary,
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                ),
          const SizedBox(height: 6),
          Text(
            name,
            style: AppTextStyles.storyName,
          ),
        ],
      ),
    );
  }
}







