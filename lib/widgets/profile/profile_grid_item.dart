
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
        borderRadius: BorderRadius.circular(18), 
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      clipBehavior: Clip.antiAlias, 
      child: Stack(
        children: [
          
          if (views.isNotEmpty)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.35),
                    ],
                    stops: const [0.65, 1.0],
                  ),
                ),
              ),
            ),

          
          if (views.isNotEmpty)
            Positioned(
              bottom: 12,
              left: 12,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.visibility_outlined, 
                    color: Colors.white,
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    views,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500, 
                      letterSpacing: -0.1,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
