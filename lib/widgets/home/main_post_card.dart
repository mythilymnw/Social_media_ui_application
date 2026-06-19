import 'package:flutter/material.dart';
import 'post_actions.dart';
import 'post_description.dart';
import 'post_user_info.dart';
class PostCard extends StatelessWidget {
  final String image;
  final bool showOverlay;

  const PostCard({
    super.key,
    required this.image,
    this.showOverlay = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: showOverlay
          ? Stack(
              children: [
                Positioned(
                  left: 14,
                  right: 14,
                  bottom: 16,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            PostUserInfo(),
                            SizedBox(height: 12),
                            PostDescription(),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      const PostActions(),
                    ],
                  ),
                ),
              ],
            )
          : null,
    );
  }
}



