import 'package:flutter/material.dart';
import '../../constants/app_colors.dart'; 
import '../../constants/app_text_style.dart';

class MessageItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool isOnline;
  final bool hasUnread;
  final bool isSelected;

  const MessageItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    this.isOnline = false,
    this.hasUnread = false,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? const Color(0xFFF3F3F8) : Colors.transparent,
      child: Row(
        children: [
          Container(
            width: 4,
            height: 72,
            color: isSelected ? const Color.fromARGB(255, 255, 107, 61) : Colors.transparent,
                      

          ),
          const SizedBox(width: 16),
          Stack(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(imageUrl),
                backgroundColor: AppColors.textSecondary.withValues(alpha: 0.2),
              ),
              if (isOnline)
                Positioned(
                  right: 0,
                  top: 2,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 255, 107, 61),
          

                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: AppTextStyles.userName.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.description.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: AppTextStyles.username.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 8),
                if (hasUnread)
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  )
                else
                  const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
