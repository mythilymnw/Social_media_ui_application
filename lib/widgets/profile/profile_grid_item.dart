import 'package:flutter/material.dart';
class ProfileGridItem extends StatelessWidget {
  final String imageUrl;
  final String views;
  final double height;
const ProfileGridItem({
    super.key, 
    required this.imageUrl, 
    required this.height, 
    this.views = '',
  });
@override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        //rounded corners and image background for the grid item
        borderRadius: BorderRadius.circular(20), 
        image: DecorationImage(
          image: NetworkImage(imageUrl), 
          fit: BoxFit.cover,
        ),
      ),
      child: views.isNotEmpty
          ? Stack(
              children: [
                Positioned(
                  bottom: 14,
                  left: 14,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.panorama_fish_eye, // Inner circle style outline eye indicator
                          color: Colors.white, 
                          size: 13,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          views,
                          style: const TextStyle(
                            color: Colors.white, 
                            fontSize: 12, 
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}






