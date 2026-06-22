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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isAddStory
              ? Container(
                  width: 44, 
                  height: 44,
                  decoration: const BoxDecoration(
                    color: AppColors.lightOrange,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.primary,
                    size: 20,
                  ),
                )
              : Container(
                  width: 44, 
                  height: 44,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.primary,
                      width: 1.5, 
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                ),
          const SizedBox(height: 2), 
          Expanded( 
            child: Text(
              name,
              style: AppTextStyles.storyName.copyWith(
                fontSize: 10, 
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
